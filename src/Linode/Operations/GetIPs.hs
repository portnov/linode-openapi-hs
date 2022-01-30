-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getIPs
module Linode.Operations.GetIPs where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified Linode.Common
import Linode.Types
import Linode.ManualTypes

-- | > GET /networking/ips
-- 
-- Returns a paginated list of IP Addresses on your Account, excluding private addresses.
getIPs :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetIPsResponse)) -- ^ Monad containing the result of the operation
getIPs config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetIPsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIPsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      GetIPsResponseBody200)
                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIPsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                        GetIPsResponseBodyDefault)
                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/networking/ips") [])
-- | > GET /networking/ips
-- 
-- The same as 'getIPs' but returns the raw 'Data.ByteString.Char8.ByteString'
getIPsRaw :: forall m s . (Linode.Common.MonadHTTP m,
                           Linode.Common.SecurityScheme s) =>
             Linode.Common.Configuration s ->
             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIPsRaw config = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/networking/ips") [])
-- | > GET /networking/ips
-- 
-- Monadic version of 'getIPs' (use with 'Linode.Common.runWithConfiguration')
getIPsM :: forall m s . (Linode.Common.MonadHTTP m,
                         Linode.Common.SecurityScheme s) =>
           Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                              m
                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                  (Network.HTTP.Client.Types.Response GetIPsResponse))
getIPsM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetIPsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIPsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                GetIPsResponseBody200)
                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIPsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                  GetIPsResponseBodyDefault)
                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/networking/ips") [])
-- | > GET /networking/ips
-- 
-- Monadic version of 'getIPsRaw' (use with 'Linode.Common.runWithConfiguration')
getIPsRawM :: forall m s . (Linode.Common.MonadHTTP m,
                            Linode.Common.SecurityScheme s) =>
              Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                 m
                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIPsRawM = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/networking/ips") [])
-- | Represents a response of the operation 'getIPs'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIPsResponseError' is used.
data GetIPsResponse =                                
   GetIPsResponseError GHC.Base.String               -- ^ Means either no matching case available or a parse error
  | GetIPsResponse200 GetIPsResponseBody200          -- ^ A paginated list of IP Addresses.
  | GetIPsResponseDefault GetIPsResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetIPsResponseBody200
-- 
-- 
data GetIPsResponseBody200 = GetIPsResponseBody200 {
  -- | data
  getIPsResponseBody200Data :: (GHC.Base.Maybe ([] IPAddress))
  -- | page
  , getIPsResponseBody200Page :: (GHC.Base.Maybe PaginationEnvelope_properties_page)
  -- | pages
  , getIPsResponseBody200Pages :: (GHC.Base.Maybe PaginationEnvelope_properties_pages)
  -- | results
  , getIPsResponseBody200Results :: (GHC.Base.Maybe PaginationEnvelope_properties_results)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetIPsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getIPsResponseBody200Data obj) : (Data.Aeson..=) "page" (getIPsResponseBody200Page obj) : (Data.Aeson..=) "pages" (getIPsResponseBody200Pages obj) : (Data.Aeson..=) "results" (getIPsResponseBody200Results obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getIPsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "page" (getIPsResponseBody200Page obj) GHC.Base.<> ((Data.Aeson..=) "pages" (getIPsResponseBody200Pages obj) GHC.Base.<> (Data.Aeson..=) "results" (getIPsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetIPsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIPsResponseBody200" (\obj -> (((GHC.Base.pure GetIPsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Defines the data type for the schema GetIPsResponseBodyDefault
-- 
-- 
data GetIPsResponseBodyDefault = GetIPsResponseBodyDefault {
  -- | errors
  getIPsResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetIPsResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (getIPsResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (getIPsResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetIPsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIPsResponseBodyDefault" (\obj -> GHC.Base.pure GetIPsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))