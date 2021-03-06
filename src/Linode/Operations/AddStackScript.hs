-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation addStackScript
module Linode.Operations.AddStackScript where

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

-- | > POST /linode/stackscripts
-- 
-- Creates a StackScript in your Account.
addStackScript :: forall m . Linode.Common.MonadHTTP m => AddStackScriptRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response AddStackScriptResponse) -- ^ Monadic computation which returns the result of the operation
addStackScript body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either AddStackScriptResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> AddStackScriptResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             StackScript)
                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> AddStackScriptResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                               AddStackScriptResponseBodyDefault)
                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/stackscripts") GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/linode\/stackscripts.POST.requestBody.content.application\/json.schema.allOf@ in the specification.
-- 
-- 
data AddStackScriptRequestBody = AddStackScriptRequestBody {
  -- | created: The date this StackScript was created.
  addStackScriptRequestBodyCreated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | deployments_active: Count of currently active, deployed Linodes created from this StackScript.
  , addStackScriptRequestBodyDeploymentsActive :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | deployments_total: The total number of times this StackScript has been deployed.
  , addStackScriptRequestBodyDeploymentsTotal :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | description: A description for the StackScript.
  , addStackScriptRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: The unique ID of this StackScript.
  , addStackScriptRequestBodyId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | images: An array of Image IDs. These are the images that can be deployed with this Stackscript.
  , addStackScriptRequestBodyImages :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | is_public: This determines whether other users can use your StackScript. **Once a StackScript is made public, it cannot be made private.**
  , addStackScriptRequestBodyIsPublic :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | label: The StackScript\'s label is for display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 128
  -- * Minimum length of 3
  , addStackScriptRequestBodyLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | mine: Returns \`true\` if this StackScript is owned by the account of the user making the request, and the user
  -- making the request is unrestricted or has access to this StackScript.
  , addStackScriptRequestBodyMine :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | rev_note: This field allows you to add notes for the set of revisions made to this StackScript.
  , addStackScriptRequestBodyRevNote :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | script: The script to execute when provisioning a new Linode with this StackScript.
  , addStackScriptRequestBodyScript :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | updated: The date this StackScript was last updated.
  , addStackScriptRequestBodyUpdated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | user_defined_fields: This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment. See \<a target=\"_top\" href=\"\/docs\/platform\/stackscripts\/\#variables-and-udfs\">Variables and UDFs\<\/a> for more information.
  , addStackScriptRequestBodyUserDefinedFields :: (GHC.Maybe.Maybe ([UserDefinedField]))
  -- | user_gravatar_id: The Gravatar ID for the User who created the StackScript.
  , addStackScriptRequestBodyUserGravatarId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | username: The User who created the StackScript.
  , addStackScriptRequestBodyUsername :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddStackScriptRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyCreated obj : "deployments_active" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyDeploymentsActive obj : "deployments_total" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyDeploymentsTotal obj : "description" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyDescription obj : "id" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyId obj : "images" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyImages obj : "is_public" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyIsPublic obj : "label" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyLabel obj : "mine" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyMine obj : "rev_note" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyRevNote obj : "script" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyScript obj : "updated" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyUpdated obj : "user_defined_fields" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyUserDefinedFields obj : "user_gravatar_id" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyUserGravatarId obj : "username" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyUsername obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyCreated obj) GHC.Base.<> (("deployments_active" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyDeploymentsActive obj) GHC.Base.<> (("deployments_total" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyDeploymentsTotal obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyDescription obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyId obj) GHC.Base.<> (("images" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyImages obj) GHC.Base.<> (("is_public" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyIsPublic obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyLabel obj) GHC.Base.<> (("mine" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyMine obj) GHC.Base.<> (("rev_note" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyRevNote obj) GHC.Base.<> (("script" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyScript obj) GHC.Base.<> (("updated" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyUpdated obj) GHC.Base.<> (("user_defined_fields" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyUserDefinedFields obj) GHC.Base.<> (("user_gravatar_id" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyUserGravatarId obj) GHC.Base.<> ("username" Data.Aeson.Types.ToJSON..= addStackScriptRequestBodyUsername obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON AddStackScriptRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddStackScriptRequestBody" (\obj -> ((((((((((((((GHC.Base.pure AddStackScriptRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deployments_active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deployments_total")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_public")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mine")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rev_note")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "script")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_defined_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_gravatar_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "username"))
-- | Create a new 'AddStackScriptRequestBody' with all required fields.
mkAddStackScriptRequestBody :: AddStackScriptRequestBody
mkAddStackScriptRequestBody = AddStackScriptRequestBody{addStackScriptRequestBodyCreated = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyDeploymentsActive = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyDeploymentsTotal = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyDescription = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyId = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyImages = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyIsPublic = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyLabel = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyMine = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyRevNote = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyScript = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyUpdated = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyUserDefinedFields = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyUserGravatarId = GHC.Maybe.Nothing,
                                                        addStackScriptRequestBodyUsername = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'addStackScript'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'AddStackScriptResponseError' is used.
data AddStackScriptResponse =
   AddStackScriptResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | AddStackScriptResponse200 StackScript -- ^ StackScript successfully created.
  | AddStackScriptResponseDefault AddStackScriptResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data AddStackScriptResponseBodyDefault = AddStackScriptResponseBodyDefault {
  -- | errors
  addStackScriptResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddStackScriptResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= addStackScriptResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= addStackScriptResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON AddStackScriptResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddStackScriptResponseBodyDefault" (\obj -> GHC.Base.pure AddStackScriptResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'AddStackScriptResponseBodyDefault' with all required fields.
mkAddStackScriptResponseBodyDefault :: AddStackScriptResponseBodyDefault
mkAddStackScriptResponseBodyDefault = AddStackScriptResponseBodyDefault{addStackScriptResponseBodyDefaultErrors = GHC.Maybe.Nothing}
