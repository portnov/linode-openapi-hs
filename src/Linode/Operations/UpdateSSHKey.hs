-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation updateSSHKey
module Linode.Operations.UpdateSSHKey where

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

-- | > PUT /profile/sshkeys/{sshKeyId}
-- 
-- Updates an SSH Key that you have permission to \`read_write\`.
updateSSHKey :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> SSHKey                                                                                                                   -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response UpdateSSHKeyResponse)) -- ^ Monad containing the result of the operation
updateSSHKey config
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either UpdateSSHKeyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> UpdateSSHKeyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      SSHKey)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> UpdateSSHKeyResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        UpdateSSHKeyResponseBodyDefault)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/profile/sshkeys/{sshKeyId}") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > PUT /profile/sshkeys/{sshKeyId}
-- 
-- The same as 'updateSSHKey' but returns the raw 'Data.ByteString.Char8.ByteString'
updateSSHKeyRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                 Linode.Common.SecurityScheme s) =>
                   Linode.Common.Configuration s ->
                   SSHKey ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
updateSSHKeyRaw config
                body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/profile/sshkeys/{sshKeyId}") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > PUT /profile/sshkeys/{sshKeyId}
-- 
-- Monadic version of 'updateSSHKey' (use with 'Linode.Common.runWithConfiguration')
updateSSHKeyM :: forall m s . (Linode.Common.MonadHTTP m,
                               Linode.Common.SecurityScheme s) =>
                 SSHKey ->
                 Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response UpdateSSHKeyResponse))
updateSSHKeyM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either UpdateSSHKeyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> UpdateSSHKeyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       SSHKey)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> UpdateSSHKeyResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                         UpdateSSHKeyResponseBodyDefault)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/profile/sshkeys/{sshKeyId}") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > PUT /profile/sshkeys/{sshKeyId}
-- 
-- Monadic version of 'updateSSHKeyRaw' (use with 'Linode.Common.runWithConfiguration')
updateSSHKeyRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                  Linode.Common.SecurityScheme s) =>
                    SSHKey ->
                    Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
updateSSHKeyRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/profile/sshkeys/{sshKeyId}") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'updateSSHKey'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'UpdateSSHKeyResponseError' is used.
data UpdateSSHKeyResponse =                                      
   UpdateSSHKeyResponseError GHC.Base.String                     -- ^ Means either no matching case available or a parse error
  | UpdateSSHKeyResponse200 SSHKey                               -- ^ SSH Key updated successfully.
  | UpdateSSHKeyResponseDefault UpdateSSHKeyResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema UpdateSSHKeyResponseBodyDefault
-- 
-- 
data UpdateSSHKeyResponseBodyDefault = UpdateSSHKeyResponseBodyDefault {
  -- | errors
  updateSSHKeyResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON UpdateSSHKeyResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (updateSSHKeyResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (updateSSHKeyResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON UpdateSSHKeyResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateSSHKeyResponseBodyDefault" (\obj -> GHC.Base.pure UpdateSSHKeyResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
