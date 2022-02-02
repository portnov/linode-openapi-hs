{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}

module CmdLine where

import qualified Data.Text as T
import Options.Applicative

data CmdLine = CmdLine {
    cmdCommon :: CommonOpts
  , cmdCommand :: Command
  } deriving (Eq, Show)

data CommonOpts = CommonOpts {
    tokenFile :: Maybe FilePath
  } deriving (Eq, Show)

data Command =
    Types
  | Images
  | Regions
  | List
  | Create {
      linodeType :: T.Text
    , image :: T.Text
    , region :: T.Text
    , rootPassword :: T.Text
    , label :: T.Text
    }
  | Boot { label :: T.Text }
  | Shutdown { label :: T.Text }
  deriving (Eq, Show)

parser :: Parser CmdLine
parser = CmdLine <$> commonOpts <*> commands

commonOpts :: Parser CommonOpts
commonOpts = CommonOpts
    <$> optional (strOption
        ( long "token-file"
        <> metavar "PATH"
        <> help "path to file which contains personal access token"))

commands :: Parser Command
commands = hsubparser
    (  cmd "types" pTypes "print Linode types"
    <> cmd "images" pImages "print Linode images"
    <> cmd "regions" pRegions "print Linode regions"
    <> cmd "list" pList "print Linode instances"
    <> cmd "create" pCreateLinode "Create Linode Instance"
    <> cmd "boot" pBoot "Boot Linode Instance"
    <> cmd "shutdown" pShutdown "Shut down Linode Instance" )
  where
    cmd name func helpText = command name (info func (progDesc helpText))

pTypes :: Parser Command
pTypes = pure Types

pImages :: Parser Command
pImages = pure Images

pRegions :: Parser Command
pRegions = pure Regions

pList :: Parser Command
pList = pure List

pCreateLinode :: Parser Command
pCreateLinode = Create
    <$> strOption (long "type" <> short 't' <> metavar "TYPE" <> help "Linode type")
    <*> strOption (long "image" <> short 'i' <> metavar "IMAGE" <> help "Linode image")
    <*> strOption (long "region" <> short 'r' <> metavar "REGION" <> help "Linode region")
    <*> strOption (long "root-password" <> short 'P' <> metavar "PASSWORD" <> help "Root password")
    <*> strOption (long "label" <> short 'L' <> metavar "LABEL" <> help "Linode instance label")

pBoot :: Parser Command
pBoot = Boot
    <$> argument str (metavar "LABEL" <> help "Linode Instance label")

pShutdown :: Parser Command
pShutdown = Shutdown
    <$> argument str (metavar "LABEL" <> help "Linode Instance label")

parserInfo :: ParserInfo CmdLine
parserInfo = info (parser <**> helper)
               (fullDesc
               <> header "linode-openapi-cli - basic command-line tools for Linode instances management"
               <> progDesc "Create, start and stop Linode instances")

getCmdArgs :: IO CmdLine
getCmdArgs = execParser parserInfo

