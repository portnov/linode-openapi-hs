{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Main where

import Control.Monad
import Control.Monad.IO.Class
import Data.Maybe
import System.Environment
import qualified Data.Text as T
import qualified Data.Text.IO as TIO
import qualified Data.Map as M
import Network.HTTP.Client
import Text.Printf

import qualified Linode as L

import CmdLine

deriving instance MonadFail m => MonadFail (L.ClientT m)

main :: IO ()
main = do
  cmd <- getCmdArgs
  print cmd
  case cmdCommand cmd of
    Types -> printTypes (cmdCommon cmd)
    Images -> printImages (cmdCommon cmd)
    Regions -> printRegions (cmdCommon cmd)
    List -> printInstances (cmdCommon cmd)
    Create {} -> createInstance (cmdCommon cmd) (cmdCommand cmd)
    Boot label -> bootInstance (cmdCommon cmd) label
    Shutdown label -> shutdownInstance (cmdCommon cmd) label

getConfiguration :: CommonOpts -> IO L.Configuration
getConfiguration opts = do
  token <- case tokenFile opts of
             Nothing -> do
               mbToken <- lookupEnv "LINODE_TOKEN"
               case mbToken of
                 Nothing -> fail "No access token provided"
                 Just token -> return $ T.pack token
             Just path -> do
               text <- TIO.readFile path
               return $ head $ T.words text
  return $ L.defaultConfiguration {L.configSecurityScheme = L.bearerAuthenticationSecurityScheme token}
      
withConfiguration :: CommonOpts -> L.ClientT IO a -> IO a
withConfiguration opts action = do
  cfg <- getConfiguration opts
  L.runWithConfiguration cfg action

printType :: L.LinodeType -> IO ()
printType t =
      printf "%s\t%s\t%d vCPUs\tDisk %d\tRAM %d\t%s/H\t%s/M\n"
        (T.unpack $ fromMaybe "-" $ L.linodeTypeId t) (T.unpack $ fromMaybe "-" $ L.linodeTypeLabel t)
        (fromMaybe 0 $ L.linodeTypeVcpus t)
        (fromMaybe 0 $ L.linodeTypeDisk t) (fromMaybe 0 $ L.linodeTypeMemory t)
        hourly monthly
  where
    (hourly, monthly) = case L.linodeTypePrice t of
                         Nothing -> ("-", "-")
                         Just p -> (maybe "-" show $ L.linodeTypePrice'Hourly p, maybe "-" show $ L.linodeTypePrice'Monthly p)

printTypes :: CommonOpts -> IO ()
printTypes opts = withConfiguration opts $ do
  rs <- L.getLinodeTypes
  case responseBody rs of
    L.GetLinodeTypesResponse200 body ->
      case L.getLinodeTypesResponseBody200Data body of
        Nothing -> liftIO $ putStrLn "No data to show"
        Just types -> liftIO $ do
          putStrLn "Got data"
          forM_ types printType
    L.GetLinodeTypesResponseError str -> liftIO $ putStrLn str
    L.GetLinodeTypesResponseDefault err -> liftIO $ do
      putStrLn "Got Errors"
      putStrLn $ show err

printImage :: L.Image -> IO ()
printImage i =
      printf "%s\t%s\t%s\t%d\n"
        (fromMaybe "-" $ L.imageId i)
        (fromMaybe "-" $ L.imageLabel i)
        (fromMaybe "-" $ L.imageDescription i)
        (fromMaybe 0 $ L.imageSize i)

printImages :: CommonOpts -> IO ()
printImages opts = withConfiguration opts $ do
  rs <- L.getImages L.mkGetImagesParameters
  case responseBody rs of
    L.GetImagesResponse200 body ->
      case L.getImagesResponseBody200Data body of
        Nothing -> liftIO $ putStrLn "No data to show"
        Just images -> liftIO $ forM_ images printImage
    L.GetImagesResponseError str -> liftIO $ putStrLn str
    L.GetImagesResponseDefault err -> liftIO $ putStrLn $ show err

printRegion :: L.Region -> IO ()
printRegion r =
      printf "%s\t%s\n"
        (fromMaybe "-" $ L.regionId r)
        (fromMaybe "-" $ L.regionCountry r)

printRegions :: CommonOpts -> IO ()
printRegions opts = withConfiguration opts $ do
  rs <- L.getRegions
  case responseBody rs of
    L.GetRegionsResponse200 body -> do
      case L.getRegionsResponseBody200Data body of
        Nothing -> liftIO $ putStrLn "No data to show"
        Just regions -> liftIO $ forM_ regions printRegion
    L.GetRegionsResponseError str -> liftIO $ putStrLn str
    L.GetRegionsResponseDefault err -> liftIO $ putStrLn $ show err

createInstance :: CommonOpts -> Command -> IO ()
createInstance opts cmd = withConfiguration opts $ do
  let rq = L.mkCreateLinodeInstanceRequestBody {
              L.createLinodeInstanceRequestBodyType = Just (linodeType cmd)
            , L.createLinodeInstanceRequestBodyImage = Just (image cmd)
            , L.createLinodeInstanceRequestBodyRegion = Just (region cmd)
            , L.createLinodeInstanceRequestBodyRootPass = Just (rootPassword cmd)
            , L.createLinodeInstanceRequestBodyLabel = Just (label cmd)
          }
  rs <- L.createLinodeInstance rq
  case responseBody rs of
    L.CreateLinodeInstanceResponse200 linode -> liftIO $ print linode
    L.CreateLinodeInstanceResponseError str -> liftIO $ putStrLn str
    L.CreateLinodeInstanceResponseDefault err -> liftIO $ putStrLn $ show err

listLinodes :: L.ClientT IO [L.Linode]
listLinodes = do
  let rq = L.mkGetLinodeInstancesParameters
  rs <- L.getLinodeInstances rq
  case responseBody rs of
    L.GetLinodeInstancesResponse200 body ->
      return $ fromMaybe [] $ L.getLinodeInstancesResponseBody200Data body
    L.GetLinodeInstancesResponseError str -> fail str
    L.GetLinodeInstancesResponseDefault err -> fail $ show err

printInstance :: L.Linode -> IO ()
printInstance l =
    printf "%d\t%s\t%s\t%s\t%s\t%s\n" id label ltype image region status
  where
    id = fromMaybe 0 (L.linodeId l)
    label = fromMaybe "-" (L.linodeLabel l)
    ltype = fromMaybe "-" (L.linodeType l)
    image = fromMaybe "-" (L.linodeImage l)
    region = fromMaybe "-" (L.linodeRegion l)
    status = maybe "-" show (L.linodeStatus l) 

printInstances :: CommonOpts -> IO ()
printInstances opts = withConfiguration opts $ do
  linodes <- listLinodes
  liftIO $ forM_ linodes printInstance

lookupLinodeId :: T.Text -> L.ClientT IO Int
lookupLinodeId label = do
  linodes <- listLinodes
  let pairs = [(L.linodeLabel l, L.linodeId l) | l <- linodes]
      m = M.fromList [(label, id) | (Just label, Just id) <- pairs]
  case M.lookup label m of
    Nothing -> fail "Cannot find Linode Instance by specified label"
    Just l -> return l

bootInstance :: CommonOpts -> T.Text -> IO ()
bootInstance opts label = withConfiguration opts $ do
  linodeId <- lookupLinodeId label
  -- let rq = L.mkBootLinodeInstanceRequestBody
  rs <- L.bootLinodeInstance linodeId Nothing
  case responseBody rs of
    L.BootLinodeInstanceResponse200 obj -> return ()
    L.BootLinodeInstanceResponseError str -> fail str
    L.BootLinodeInstanceResponseDefault err -> fail $ show err

shutdownInstance :: CommonOpts -> T.Text -> IO ()
shutdownInstance opts label = withConfiguration opts $ do
  linodeId <- lookupLinodeId label
  rs <- L.shutdownLinodeInstance linodeId
  case responseBody rs of
    L.ShutdownLinodeInstanceResponse200 obj -> return ()
    L.ShutdownLinodeInstanceResponseError str -> fail str
    L.ShutdownLinodeInstanceResponseDefault err -> fail $ show err

