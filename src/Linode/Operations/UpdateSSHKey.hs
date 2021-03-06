-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation updateSSHKey
module Linode.Operations.UpdateSSHKey where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
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
updateSSHKey :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ sshKeyId: The ID of the SSHKey
  -> SSHKey -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response UpdateSSHKeyResponse) -- ^ Monadic computation which returns the result of the operation
updateSSHKey sshKeyId
             body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either UpdateSSHKeyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> UpdateSSHKeyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       SSHKey)
                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> UpdateSSHKeyResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         UpdateSSHKeyResponseBodyDefault)
                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/profile/sshkeys/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel sshKeyId)) GHC.Base.++ ""))) GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'updateSSHKey'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'UpdateSSHKeyResponseError' is used.
data UpdateSSHKeyResponse =
   UpdateSSHKeyResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | UpdateSSHKeyResponse200 SSHKey -- ^ SSH Key updated successfully.
  | UpdateSSHKeyResponseDefault UpdateSSHKeyResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data UpdateSSHKeyResponseBodyDefault = UpdateSSHKeyResponseBodyDefault {
  -- | errors
  updateSSHKeyResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateSSHKeyResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= updateSSHKeyResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= updateSSHKeyResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON UpdateSSHKeyResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateSSHKeyResponseBodyDefault" (\obj -> GHC.Base.pure UpdateSSHKeyResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'UpdateSSHKeyResponseBodyDefault' with all required fields.
mkUpdateSSHKeyResponseBodyDefault :: UpdateSSHKeyResponseBodyDefault
mkUpdateSSHKeyResponseBodyDefault = UpdateSSHKeyResponseBodyDefault{updateSSHKeyResponseBodyDefaultErrors = GHC.Maybe.Nothing}
