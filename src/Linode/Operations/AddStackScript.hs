-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation addStackScript
module Linode.Operations.AddStackScript where

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

-- | > POST /linode/stackscripts
-- 
-- Creates a StackScript in your Account.
addStackScript :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> AddStackScriptRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response AddStackScriptResponse)) -- ^ Monad containing the result of the operation
addStackScript config
               body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either AddStackScriptResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> AddStackScriptResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            StackScript)
                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> AddStackScriptResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              AddStackScriptResponseBodyDefault)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/stackscripts") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/stackscripts
-- 
-- The same as 'addStackScript' but returns the raw 'Data.ByteString.Char8.ByteString'
addStackScriptRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                   Linode.Common.SecurityScheme s) =>
                     Linode.Common.Configuration s ->
                     AddStackScriptRequestBody ->
                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
addStackScriptRaw config
                  body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/stackscripts") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/stackscripts
-- 
-- Monadic version of 'addStackScript' (use with 'Linode.Common.runWithConfiguration')
addStackScriptM :: forall m s . (Linode.Common.MonadHTTP m,
                                 Linode.Common.SecurityScheme s) =>
                   AddStackScriptRequestBody ->
                   Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response AddStackScriptResponse))
addStackScriptM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either AddStackScriptResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> AddStackScriptResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                             StackScript)
                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> AddStackScriptResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                               AddStackScriptResponseBodyDefault)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/stackscripts") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/stackscripts
-- 
-- Monadic version of 'addStackScriptRaw' (use with 'Linode.Common.runWithConfiguration')
addStackScriptRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                    Linode.Common.SecurityScheme s) =>
                      AddStackScriptRequestBody ->
                      Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
addStackScriptRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/stackscripts") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema addStackScriptRequestBody
-- 
-- 
data AddStackScriptRequestBody = AddStackScriptRequestBody {
  -- | created: The date this StackScript was created.
  addStackScriptRequestBodyCreated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | deployments_active: Count of currently active, deployed Linodes created from this StackScript.
  , addStackScriptRequestBodyDeployments_active :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | deployments_total: The total number of times this StackScript has been deployed.
  , addStackScriptRequestBodyDeployments_total :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | description: A description for the StackScript.
  , addStackScriptRequestBodyDescription :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | id: The unique ID of this StackScript.
  , addStackScriptRequestBodyId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | images: An array of Image IDs. These are the images that can be deployed with this Stackscript.
  , addStackScriptRequestBodyImages :: (GHC.Base.Maybe ([] Data.Text.Internal.Text))
  -- | is_public: This determines whether other users can use your StackScript. **Once a StackScript is made public, it cannot be made private.**
  , addStackScriptRequestBodyIs_public :: (GHC.Base.Maybe GHC.Types.Bool)
  -- | label: The StackScript\'s label is for display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 128
  -- * Minimum length of 3
  , addStackScriptRequestBodyLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | mine: Returns \`true\` if this StackScript is owned by the account of the user making the request, and the user
  -- making the request is unrestricted or has access to this StackScript.
  , addStackScriptRequestBodyMine :: (GHC.Base.Maybe GHC.Types.Bool)
  -- | rev_note: This field allows you to add notes for the set of revisions made to this StackScript.
  , addStackScriptRequestBodyRev_note :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | script: The script to execute when provisioning a new Linode with this StackScript.
  , addStackScriptRequestBodyScript :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | updated: The date this StackScript was last updated.
  , addStackScriptRequestBodyUpdated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | user_defined_fields: This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment. See \<a target=\"_top\" href=\"\/docs\/platform\/stackscripts\/\#variables-and-udfs\">Variables and UDFs\<\/a> for more information.
  , addStackScriptRequestBodyUser_defined_fields :: (GHC.Base.Maybe ([] UserDefinedField))
  -- | user_gravatar_id: The Gravatar ID for the User who created the StackScript.
  , addStackScriptRequestBodyUser_gravatar_id :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | username: The User who created the StackScript.
  , addStackScriptRequestBodyUsername :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AddStackScriptRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (addStackScriptRequestBodyCreated obj) : (Data.Aeson..=) "deployments_active" (addStackScriptRequestBodyDeployments_active obj) : (Data.Aeson..=) "deployments_total" (addStackScriptRequestBodyDeployments_total obj) : (Data.Aeson..=) "description" (addStackScriptRequestBodyDescription obj) : (Data.Aeson..=) "id" (addStackScriptRequestBodyId obj) : (Data.Aeson..=) "images" (addStackScriptRequestBodyImages obj) : (Data.Aeson..=) "is_public" (addStackScriptRequestBodyIs_public obj) : (Data.Aeson..=) "label" (addStackScriptRequestBodyLabel obj) : (Data.Aeson..=) "mine" (addStackScriptRequestBodyMine obj) : (Data.Aeson..=) "rev_note" (addStackScriptRequestBodyRev_note obj) : (Data.Aeson..=) "script" (addStackScriptRequestBodyScript obj) : (Data.Aeson..=) "updated" (addStackScriptRequestBodyUpdated obj) : (Data.Aeson..=) "user_defined_fields" (addStackScriptRequestBodyUser_defined_fields obj) : (Data.Aeson..=) "user_gravatar_id" (addStackScriptRequestBodyUser_gravatar_id obj) : (Data.Aeson..=) "username" (addStackScriptRequestBodyUsername obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (addStackScriptRequestBodyCreated obj) GHC.Base.<> ((Data.Aeson..=) "deployments_active" (addStackScriptRequestBodyDeployments_active obj) GHC.Base.<> ((Data.Aeson..=) "deployments_total" (addStackScriptRequestBodyDeployments_total obj) GHC.Base.<> ((Data.Aeson..=) "description" (addStackScriptRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "id" (addStackScriptRequestBodyId obj) GHC.Base.<> ((Data.Aeson..=) "images" (addStackScriptRequestBodyImages obj) GHC.Base.<> ((Data.Aeson..=) "is_public" (addStackScriptRequestBodyIs_public obj) GHC.Base.<> ((Data.Aeson..=) "label" (addStackScriptRequestBodyLabel obj) GHC.Base.<> ((Data.Aeson..=) "mine" (addStackScriptRequestBodyMine obj) GHC.Base.<> ((Data.Aeson..=) "rev_note" (addStackScriptRequestBodyRev_note obj) GHC.Base.<> ((Data.Aeson..=) "script" (addStackScriptRequestBodyScript obj) GHC.Base.<> ((Data.Aeson..=) "updated" (addStackScriptRequestBodyUpdated obj) GHC.Base.<> ((Data.Aeson..=) "user_defined_fields" (addStackScriptRequestBodyUser_defined_fields obj) GHC.Base.<> ((Data.Aeson..=) "user_gravatar_id" (addStackScriptRequestBodyUser_gravatar_id obj) GHC.Base.<> (Data.Aeson..=) "username" (addStackScriptRequestBodyUsername obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON AddStackScriptRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddStackScriptRequestBody" (\obj -> ((((((((((((((GHC.Base.pure AddStackScriptRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deployments_active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deployments_total")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_public")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mine")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rev_note")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "script")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_defined_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_gravatar_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "username"))
-- | Represents a response of the operation 'addStackScript'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'AddStackScriptResponseError' is used.
data AddStackScriptResponse =                                        
   AddStackScriptResponseError GHC.Base.String                       -- ^ Means either no matching case available or a parse error
  | AddStackScriptResponse200 StackScript                            -- ^ StackScript successfully created.
  | AddStackScriptResponseDefault AddStackScriptResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema AddStackScriptResponseBodyDefault
-- 
-- 
data AddStackScriptResponseBodyDefault = AddStackScriptResponseBodyDefault {
  -- | errors
  addStackScriptResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AddStackScriptResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (addStackScriptResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (addStackScriptResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON AddStackScriptResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddStackScriptResponseBodyDefault" (\obj -> GHC.Base.pure AddStackScriptResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
