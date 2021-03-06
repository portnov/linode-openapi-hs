-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation viewManagedSSHKey
module Linode.Operations.ViewManagedSSHKey where

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

-- | > GET /managed/credentials/sshkey
-- 
-- Returns the unique SSH public key assigned to your Linode account\'s Managed service. If you [add this public key](\/docs\/platform\/linode-managed\/\#adding-the-public-key) to a Linode on your account, Linode special forces will be able to log in to the Linode with this key when attempting to resolve issues.
viewManagedSSHKey :: forall m . Linode.Common.MonadHTTP m => Linode.Common.ClientT m (Network.HTTP.Client.Types.Response ViewManagedSSHKeyResponse) -- ^ Monadic computation which returns the result of the operation
viewManagedSSHKey = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ViewManagedSSHKeyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ViewManagedSSHKeyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                 ViewManagedSSHKeyResponseBody200)
                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ViewManagedSSHKeyResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                   ViewManagedSSHKeyResponseBodyDefault)
                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/credentials/sshkey") GHC.Base.mempty)
-- | Represents a response of the operation 'viewManagedSSHKey'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ViewManagedSSHKeyResponseError' is used.
data ViewManagedSSHKeyResponse =
   ViewManagedSSHKeyResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | ViewManagedSSHKeyResponse200 ViewManagedSSHKeyResponseBody200 -- ^ The requested Managed SSH public key.
  | ViewManagedSSHKeyResponseDefault ViewManagedSSHKeyResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/managed\/credentials\/sshkey.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- A unique SSH public key that allows Linode\'s special forces to access a Managed server to respond to Issues.
data ViewManagedSSHKeyResponseBody200 = ViewManagedSSHKeyResponseBody200 {
  -- | ssh_key: The unique SSH public key assigned to your Linode account\'s Managed service.
  viewManagedSSHKeyResponseBody200SshKey :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ViewManagedSSHKeyResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ssh_key" Data.Aeson.Types.ToJSON..= viewManagedSSHKeyResponseBody200SshKey obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("ssh_key" Data.Aeson.Types.ToJSON..= viewManagedSSHKeyResponseBody200SshKey obj)
instance Data.Aeson.Types.FromJSON.FromJSON ViewManagedSSHKeyResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ViewManagedSSHKeyResponseBody200" (\obj -> GHC.Base.pure ViewManagedSSHKeyResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssh_key"))
-- | Create a new 'ViewManagedSSHKeyResponseBody200' with all required fields.
mkViewManagedSSHKeyResponseBody200 :: ViewManagedSSHKeyResponseBody200
mkViewManagedSSHKeyResponseBody200 = ViewManagedSSHKeyResponseBody200{viewManagedSSHKeyResponseBody200SshKey = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data ViewManagedSSHKeyResponseBodyDefault = ViewManagedSSHKeyResponseBodyDefault {
  -- | errors
  viewManagedSSHKeyResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ViewManagedSSHKeyResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= viewManagedSSHKeyResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= viewManagedSSHKeyResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON ViewManagedSSHKeyResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ViewManagedSSHKeyResponseBodyDefault" (\obj -> GHC.Base.pure ViewManagedSSHKeyResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'ViewManagedSSHKeyResponseBodyDefault' with all required fields.
mkViewManagedSSHKeyResponseBodyDefault :: ViewManagedSSHKeyResponseBodyDefault
mkViewManagedSSHKeyResponseBodyDefault = ViewManagedSSHKeyResponseBodyDefault{viewManagedSSHKeyResponseBodyDefaultErrors = GHC.Maybe.Nothing}
