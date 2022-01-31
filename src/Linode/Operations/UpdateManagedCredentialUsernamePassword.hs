-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation updateManagedCredentialUsernamePassword
module Linode.Operations.UpdateManagedCredentialUsernamePassword where

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

-- | > POST /managed/credentials/{credentialId}/update
-- 
-- Updates the username and password for a Managed Credential.
updateManagedCredentialUsernamePassword :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ credentialId: The ID of the Credential to update.
  -> GHC.Maybe.Maybe UpdateManagedCredentialUsernamePasswordRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response UpdateManagedCredentialUsernamePasswordResponse) -- ^ Monadic computation which returns the result of the operation
updateManagedCredentialUsernamePassword credentialId
                                        body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either UpdateManagedCredentialUsernamePasswordResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> UpdateManagedCredentialUsernamePasswordResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Data.Aeson.Types.Internal.Object)
                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> UpdateManagedCredentialUsernamePasswordResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          UpdateManagedCredentialUsernamePasswordResponseBodyDefault)
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/managed/credentials/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel credentialId)) GHC.Base.++ "/update"))) GHC.Base.mempty body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/managed\/credentials\/{credentialId}\/update.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data UpdateManagedCredentialUsernamePasswordRequestBody = UpdateManagedCredentialUsernamePasswordRequestBody {
  -- | password: The password to use when accessing the Managed Service.
  updateManagedCredentialUsernamePasswordRequestBodyPassword :: Data.Text.Internal.Text
  -- | username: The username to use when accessing the Managed Service.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Minimum length of 0
  , updateManagedCredentialUsernamePasswordRequestBodyUsername :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateManagedCredentialUsernamePasswordRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("password" Data.Aeson.Types.ToJSON..= updateManagedCredentialUsernamePasswordRequestBodyPassword obj : "username" Data.Aeson.Types.ToJSON..= updateManagedCredentialUsernamePasswordRequestBodyUsername obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("password" Data.Aeson.Types.ToJSON..= updateManagedCredentialUsernamePasswordRequestBodyPassword obj) GHC.Base.<> ("username" Data.Aeson.Types.ToJSON..= updateManagedCredentialUsernamePasswordRequestBodyUsername obj))
instance Data.Aeson.Types.FromJSON.FromJSON UpdateManagedCredentialUsernamePasswordRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateManagedCredentialUsernamePasswordRequestBody" (\obj -> (GHC.Base.pure UpdateManagedCredentialUsernamePasswordRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "password")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "username"))
-- | Create a new 'UpdateManagedCredentialUsernamePasswordRequestBody' with all required fields.
mkUpdateManagedCredentialUsernamePasswordRequestBody :: Data.Text.Internal.Text -- ^ 'updateManagedCredentialUsernamePasswordRequestBodyPassword'
  -> UpdateManagedCredentialUsernamePasswordRequestBody
mkUpdateManagedCredentialUsernamePasswordRequestBody updateManagedCredentialUsernamePasswordRequestBodyPassword = UpdateManagedCredentialUsernamePasswordRequestBody{updateManagedCredentialUsernamePasswordRequestBodyPassword = updateManagedCredentialUsernamePasswordRequestBodyPassword,
                                                                                                                                                                     updateManagedCredentialUsernamePasswordRequestBodyUsername = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'updateManagedCredentialUsernamePassword'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'UpdateManagedCredentialUsernamePasswordResponseError' is used.
data UpdateManagedCredentialUsernamePasswordResponse =
   UpdateManagedCredentialUsernamePasswordResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | UpdateManagedCredentialUsernamePasswordResponse200 Data.Aeson.Types.Internal.Object -- ^ Credential username and password updated.
  | UpdateManagedCredentialUsernamePasswordResponseDefault UpdateManagedCredentialUsernamePasswordResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data UpdateManagedCredentialUsernamePasswordResponseBodyDefault = UpdateManagedCredentialUsernamePasswordResponseBodyDefault {
  -- | errors
  updateManagedCredentialUsernamePasswordResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateManagedCredentialUsernamePasswordResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= updateManagedCredentialUsernamePasswordResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= updateManagedCredentialUsernamePasswordResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON UpdateManagedCredentialUsernamePasswordResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateManagedCredentialUsernamePasswordResponseBodyDefault" (\obj -> GHC.Base.pure UpdateManagedCredentialUsernamePasswordResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'UpdateManagedCredentialUsernamePasswordResponseBodyDefault' with all required fields.
mkUpdateManagedCredentialUsernamePasswordResponseBodyDefault :: UpdateManagedCredentialUsernamePasswordResponseBodyDefault
mkUpdateManagedCredentialUsernamePasswordResponseBodyDefault = UpdateManagedCredentialUsernamePasswordResponseBodyDefault{updateManagedCredentialUsernamePasswordResponseBodyDefaultErrors = GHC.Maybe.Nothing}
