-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation shareIPv4s
module Linode.Operations.ShareIPv4s where

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

-- | > POST /networking/ipv4/share
-- 
-- Configure shared IPs.  A shared IP may be brought up on a Linode other than the one it lists in its response.  This can be used to allow one Linode to begin serving requests should another become unresponsive.
shareIPv4s :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> ShareIPv4sRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response ShareIPv4sResponse)) -- ^ Monad containing the result of the operation
shareIPv4s config
           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ShareIPv4sResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ShareIPv4sResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                ShareIPv4sResponseBody200)
                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ShareIPv4sResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  ShareIPv4sResponseBodyDefault)
                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/networking/ipv4/share") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /networking/ipv4/share
-- 
-- The same as 'shareIPv4s' but returns the raw 'Data.ByteString.Char8.ByteString'
shareIPv4sRaw :: forall m s . (Linode.Common.MonadHTTP m,
                               Linode.Common.SecurityScheme s) =>
                 Linode.Common.Configuration s ->
                 ShareIPv4sRequestBody ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
shareIPv4sRaw config
              body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/networking/ipv4/share") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /networking/ipv4/share
-- 
-- Monadic version of 'shareIPv4s' (use with 'Linode.Common.runWithConfiguration')
shareIPv4sM :: forall m s . (Linode.Common.MonadHTTP m,
                             Linode.Common.SecurityScheme s) =>
               ShareIPv4sRequestBody ->
               Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                  m
                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response ShareIPv4sResponse))
shareIPv4sM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either ShareIPv4sResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ShareIPv4sResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                 ShareIPv4sResponseBody200)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ShareIPv4sResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                   ShareIPv4sResponseBodyDefault)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/networking/ipv4/share") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /networking/ipv4/share
-- 
-- Monadic version of 'shareIPv4sRaw' (use with 'Linode.Common.runWithConfiguration')
shareIPv4sRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                Linode.Common.SecurityScheme s) =>
                  ShareIPv4sRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
shareIPv4sRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/networking/ipv4/share") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema shareIPv4sRequestBody
-- 
-- 
data ShareIPv4sRequestBody = ShareIPv4sRequestBody {
  -- | ips: A list of IPs that will be shared with this Linode.  When this is finished, the given Linode will be able to bring up these addresses in addition to the Linodes that these addresses belong to.  You must have access to all of these addresses and they must be in the same Region as the Linode.
  shareIPv4sRequestBodyIps :: ([] Data.Text.Internal.Text)
  -- | linode_id: The ID of the Linode that the addresses will be shared with.
  , shareIPv4sRequestBodyLinode_id :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ShareIPv4sRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ips" (shareIPv4sRequestBodyIps obj) : (Data.Aeson..=) "linode_id" (shareIPv4sRequestBodyLinode_id obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ips" (shareIPv4sRequestBodyIps obj) GHC.Base.<> (Data.Aeson..=) "linode_id" (shareIPv4sRequestBodyLinode_id obj))
instance Data.Aeson.Types.FromJSON.FromJSON ShareIPv4sRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ShareIPv4sRequestBody" (\obj -> (GHC.Base.pure ShareIPv4sRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ips")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "linode_id"))
-- | Represents a response of the operation 'shareIPv4s'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ShareIPv4sResponseError' is used.
data ShareIPv4sResponse =                                    
   ShareIPv4sResponseError GHC.Base.String                   -- ^ Means either no matching case available or a parse error
  | ShareIPv4sResponse200 ShareIPv4sResponseBody200          -- ^ Sharing configured successfully.
  | ShareIPv4sResponseDefault ShareIPv4sResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema ShareIPv4sResponseBody200
-- 
-- 
data ShareIPv4sResponseBody200 = ShareIPv4sResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ShareIPv4sResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON ShareIPv4sResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ShareIPv4sResponseBody200" (\obj -> GHC.Base.pure ShareIPv4sResponseBody200)
-- | Defines the data type for the schema ShareIPv4sResponseBodyDefault
-- 
-- 
data ShareIPv4sResponseBodyDefault = ShareIPv4sResponseBodyDefault {
  -- | errors
  shareIPv4sResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ShareIPv4sResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (shareIPv4sResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (shareIPv4sResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON ShareIPv4sResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ShareIPv4sResponseBodyDefault" (\obj -> GHC.Base.pure ShareIPv4sResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))