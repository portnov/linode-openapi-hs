-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getObjectStorageKey
module Linode.Operations.GetObjectStorageKey where

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

-- | > GET /object-storage/keys/{keyId}
-- 
-- Returns a single Object Storage Key provisioned for your account.
getObjectStorageKey :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetObjectStorageKeyResponse)) -- ^ Monad containing the result of the operation
getObjectStorageKey config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetObjectStorageKeyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetObjectStorageKeyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                             ObjectStorageKey)
                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetObjectStorageKeyResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                               GetObjectStorageKeyResponseBodyDefault)
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/object-storage/keys/{keyId}") [])
-- | > GET /object-storage/keys/{keyId}
-- 
-- The same as 'getObjectStorageKey' but returns the raw 'Data.ByteString.Char8.ByteString'
getObjectStorageKeyRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                        Linode.Common.SecurityScheme s) =>
                          Linode.Common.Configuration s ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getObjectStorageKeyRaw config = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/object-storage/keys/{keyId}") [])
-- | > GET /object-storage/keys/{keyId}
-- 
-- Monadic version of 'getObjectStorageKey' (use with 'Linode.Common.runWithConfiguration')
getObjectStorageKeyM :: forall m s . (Linode.Common.MonadHTTP m,
                                      Linode.Common.SecurityScheme s) =>
                        Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response GetObjectStorageKeyResponse))
getObjectStorageKeyM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetObjectStorageKeyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetObjectStorageKeyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                       ObjectStorageKey)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetObjectStorageKeyResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                         GetObjectStorageKeyResponseBodyDefault)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/object-storage/keys/{keyId}") [])
-- | > GET /object-storage/keys/{keyId}
-- 
-- Monadic version of 'getObjectStorageKeyRaw' (use with 'Linode.Common.runWithConfiguration')
getObjectStorageKeyRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                         Linode.Common.SecurityScheme s) =>
                           Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getObjectStorageKeyRawM = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/object-storage/keys/{keyId}") [])
-- | Represents a response of the operation 'getObjectStorageKey'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetObjectStorageKeyResponseError' is used.
data GetObjectStorageKeyResponse =                                             
   GetObjectStorageKeyResponseError GHC.Base.String                            -- ^ Means either no matching case available or a parse error
  | GetObjectStorageKeyResponse200 ObjectStorageKey                            -- ^ The keypair
  | GetObjectStorageKeyResponseDefault GetObjectStorageKeyResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetObjectStorageKeyResponseBodyDefault
-- 
-- 
data GetObjectStorageKeyResponseBodyDefault = GetObjectStorageKeyResponseBodyDefault {
  -- | errors
  getObjectStorageKeyResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetObjectStorageKeyResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (getObjectStorageKeyResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (getObjectStorageKeyResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetObjectStorageKeyResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetObjectStorageKeyResponseBodyDefault" (\obj -> GHC.Base.pure GetObjectStorageKeyResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
