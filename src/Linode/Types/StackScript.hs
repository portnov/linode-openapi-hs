-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema StackScript
module Linode.Types.StackScript where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Linode.Common
import Linode.TypeAlias
import {-# SOURCE #-} Linode.Types.UserDefinedField

-- | Defines the object schema located at @components.schemas.StackScript@ in the specification.
-- 
-- A StackScript enables you to quickly deploy a fully-configured application in an automated manner.
data StackScript = StackScript {
  -- | created: The date this StackScript was created.
  stackScriptCreated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | deployments_active: Count of currently active, deployed Linodes created from this StackScript.
  , stackScriptDeploymentsActive :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | deployments_total: The total number of times this StackScript has been deployed.
  , stackScriptDeploymentsTotal :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | description: A description for the StackScript.
  , stackScriptDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: The unique ID of this StackScript.
  , stackScriptId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | images: An array of Image IDs. These are the images that can be deployed with this Stackscript.
  , stackScriptImages :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | is_public: This determines whether other users can use your StackScript. **Once a StackScript is made public, it cannot be made private.**
  , stackScriptIsPublic :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | label: The StackScript\'s label is for display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 128
  -- * Minimum length of 3
  , stackScriptLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | mine: Returns \`true\` if this StackScript is owned by the account of the user making the request, and the user
  -- making the request is unrestricted or has access to this StackScript.
  , stackScriptMine :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | rev_note: This field allows you to add notes for the set of revisions made to this StackScript.
  , stackScriptRevNote :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | script: The script to execute when provisioning a new Linode with this StackScript.
  , stackScriptScript :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | updated: The date this StackScript was last updated.
  , stackScriptUpdated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | user_defined_fields: This is a list of fields defined with a special syntax inside this StackScript that allow for supplying customized parameters during deployment. See \<a target=\"_top\" href=\"\/docs\/platform\/stackscripts\/\#variables-and-udfs\">Variables and UDFs\<\/a> for more information.
  , stackScriptUserDefinedFields :: (GHC.Maybe.Maybe ([UserDefinedField]))
  -- | user_gravatar_id: The Gravatar ID for the User who created the StackScript.
  , stackScriptUserGravatarId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | username: The User who created the StackScript.
  , stackScriptUsername :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON StackScript
    where toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= stackScriptCreated obj : "deployments_active" Data.Aeson.Types.ToJSON..= stackScriptDeploymentsActive obj : "deployments_total" Data.Aeson.Types.ToJSON..= stackScriptDeploymentsTotal obj : "description" Data.Aeson.Types.ToJSON..= stackScriptDescription obj : "id" Data.Aeson.Types.ToJSON..= stackScriptId obj : "images" Data.Aeson.Types.ToJSON..= stackScriptImages obj : "is_public" Data.Aeson.Types.ToJSON..= stackScriptIsPublic obj : "label" Data.Aeson.Types.ToJSON..= stackScriptLabel obj : "mine" Data.Aeson.Types.ToJSON..= stackScriptMine obj : "rev_note" Data.Aeson.Types.ToJSON..= stackScriptRevNote obj : "script" Data.Aeson.Types.ToJSON..= stackScriptScript obj : "updated" Data.Aeson.Types.ToJSON..= stackScriptUpdated obj : "user_defined_fields" Data.Aeson.Types.ToJSON..= stackScriptUserDefinedFields obj : "user_gravatar_id" Data.Aeson.Types.ToJSON..= stackScriptUserGravatarId obj : "username" Data.Aeson.Types.ToJSON..= stackScriptUsername obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= stackScriptCreated obj) GHC.Base.<> (("deployments_active" Data.Aeson.Types.ToJSON..= stackScriptDeploymentsActive obj) GHC.Base.<> (("deployments_total" Data.Aeson.Types.ToJSON..= stackScriptDeploymentsTotal obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= stackScriptDescription obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= stackScriptId obj) GHC.Base.<> (("images" Data.Aeson.Types.ToJSON..= stackScriptImages obj) GHC.Base.<> (("is_public" Data.Aeson.Types.ToJSON..= stackScriptIsPublic obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= stackScriptLabel obj) GHC.Base.<> (("mine" Data.Aeson.Types.ToJSON..= stackScriptMine obj) GHC.Base.<> (("rev_note" Data.Aeson.Types.ToJSON..= stackScriptRevNote obj) GHC.Base.<> (("script" Data.Aeson.Types.ToJSON..= stackScriptScript obj) GHC.Base.<> (("updated" Data.Aeson.Types.ToJSON..= stackScriptUpdated obj) GHC.Base.<> (("user_defined_fields" Data.Aeson.Types.ToJSON..= stackScriptUserDefinedFields obj) GHC.Base.<> (("user_gravatar_id" Data.Aeson.Types.ToJSON..= stackScriptUserGravatarId obj) GHC.Base.<> ("username" Data.Aeson.Types.ToJSON..= stackScriptUsername obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON StackScript
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "StackScript" (\obj -> ((((((((((((((GHC.Base.pure StackScript GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deployments_active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deployments_total")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_public")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mine")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rev_note")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "script")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_defined_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_gravatar_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "username"))
-- | Create a new 'StackScript' with all required fields.
mkStackScript :: StackScript
mkStackScript = StackScript{stackScriptCreated = GHC.Maybe.Nothing,
                            stackScriptDeploymentsActive = GHC.Maybe.Nothing,
                            stackScriptDeploymentsTotal = GHC.Maybe.Nothing,
                            stackScriptDescription = GHC.Maybe.Nothing,
                            stackScriptId = GHC.Maybe.Nothing,
                            stackScriptImages = GHC.Maybe.Nothing,
                            stackScriptIsPublic = GHC.Maybe.Nothing,
                            stackScriptLabel = GHC.Maybe.Nothing,
                            stackScriptMine = GHC.Maybe.Nothing,
                            stackScriptRevNote = GHC.Maybe.Nothing,
                            stackScriptScript = GHC.Maybe.Nothing,
                            stackScriptUpdated = GHC.Maybe.Nothing,
                            stackScriptUserDefinedFields = GHC.Maybe.Nothing,
                            stackScriptUserGravatarId = GHC.Maybe.Nothing,
                            stackScriptUsername = GHC.Maybe.Nothing}
