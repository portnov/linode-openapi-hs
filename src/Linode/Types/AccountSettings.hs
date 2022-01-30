-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AccountSettings
module Linode.Types.AccountSettings where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
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
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Linode.Common

-- | Defines the data type for the schema AccountSettings
-- 
-- Account Settings object
data AccountSettings = AccountSettings {
  -- | backups_enabled: Account-wide backups default.  If \`true\`, all Linodes created will automatically be enrolled in the Backups service.  If \`false\`, Linodes will not be enrolled by default, but may still be enrolled on creation or later.
  accountSettingsBackups_enabled :: (GHC.Base.Maybe GHC.Types.Bool)
  -- | longview_subscription: The Longview Pro tier you are currently subscribed to. The value must be a [Longview Subscription](\/docs\/api\/longview\/\#longview-subscriptions-list) ID or \`null\` for Longview Free.
  , accountSettingsLongview_subscription :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | managed: Our 24\/7 incident response service. This robust, multi-homed monitoring system distributes monitoring checks to ensure that your servers remain online and available at all times. Linode Managed can monitor any service or software stack reachable over TCP or HTTP. Once you add a service to Linode Managed, we\'ll monitor it for connectivity, response, and total request time.
  , accountSettingsManaged :: (GHC.Base.Maybe GHC.Types.Bool)
  -- | network_helper: Enables network helper across all users by default for new Linodes and Linode Configs.
  , accountSettingsNetwork_helper :: (GHC.Base.Maybe GHC.Types.Bool)
  -- | object_storage: A string describing the status of this account\'s Object Storage service enrollment.
  , accountSettingsObject_storage :: (GHC.Base.Maybe AccountSettingsObject_storage)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountSettings
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "backups_enabled" (accountSettingsBackups_enabled obj) : (Data.Aeson..=) "longview_subscription" (accountSettingsLongview_subscription obj) : (Data.Aeson..=) "managed" (accountSettingsManaged obj) : (Data.Aeson..=) "network_helper" (accountSettingsNetwork_helper obj) : (Data.Aeson..=) "object_storage" (accountSettingsObject_storage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "backups_enabled" (accountSettingsBackups_enabled obj) GHC.Base.<> ((Data.Aeson..=) "longview_subscription" (accountSettingsLongview_subscription obj) GHC.Base.<> ((Data.Aeson..=) "managed" (accountSettingsManaged obj) GHC.Base.<> ((Data.Aeson..=) "network_helper" (accountSettingsNetwork_helper obj) GHC.Base.<> (Data.Aeson..=) "object_storage" (accountSettingsObject_storage obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON AccountSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountSettings" (\obj -> ((((GHC.Base.pure AccountSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "backups_enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "longview_subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "managed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "network_helper")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object_storage"))
-- | Defines the enum schema AccountSettingsObject_storage
-- 
-- A string describing the status of this account\'s Object Storage service enrollment.
data AccountSettingsObject_storage
    = AccountSettingsObject_storageEnumOther Data.Aeson.Types.Internal.Value
    | AccountSettingsObject_storageEnumTyped Data.Text.Internal.Text
    | AccountSettingsObject_storageEnumString_active
    | AccountSettingsObject_storageEnumString_disabled
    | AccountSettingsObject_storageEnumString_suspended
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountSettingsObject_storage
    where toJSON (AccountSettingsObject_storageEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountSettingsObject_storageEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountSettingsObject_storageEnumString_active) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active"
          toJSON (AccountSettingsObject_storageEnumString_disabled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "disabled"
          toJSON (AccountSettingsObject_storageEnumString_suspended) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "suspended"
instance Data.Aeson.FromJSON AccountSettingsObject_storage
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active")
                                          then AccountSettingsObject_storageEnumString_active
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "disabled")
                                                then AccountSettingsObject_storageEnumString_disabled
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "suspended")
                                                      then AccountSettingsObject_storageEnumString_suspended
                                                      else AccountSettingsObject_storageEnumOther val)