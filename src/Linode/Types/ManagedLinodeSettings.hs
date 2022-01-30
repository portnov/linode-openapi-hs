-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ManagedLinodeSettings
module Linode.Types.ManagedLinodeSettings where

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

-- | Defines the data type for the schema ManagedLinodeSettings
-- 
-- Settings for a specific Linode related to Managed Services. There is one ManagedLinodeSettings object for each Linode on your Account.
data ManagedLinodeSettings = ManagedLinodeSettings {
  -- | group: The group of the Linode these Settings are for. This is for display purposes only.
  managedLinodeSettingsGroup :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | id: The ID of the Linode these Settings are for.
  , managedLinodeSettingsId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | label: The label of the Linode these Settings are for.
  , managedLinodeSettingsLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | ssh: The SSH settings for this Linode.
  , managedLinodeSettingsSsh :: (GHC.Base.Maybe ManagedLinodeSettingsSsh)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ManagedLinodeSettings
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "group" (managedLinodeSettingsGroup obj) : (Data.Aeson..=) "id" (managedLinodeSettingsId obj) : (Data.Aeson..=) "label" (managedLinodeSettingsLabel obj) : (Data.Aeson..=) "ssh" (managedLinodeSettingsSsh obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "group" (managedLinodeSettingsGroup obj) GHC.Base.<> ((Data.Aeson..=) "id" (managedLinodeSettingsId obj) GHC.Base.<> ((Data.Aeson..=) "label" (managedLinodeSettingsLabel obj) GHC.Base.<> (Data.Aeson..=) "ssh" (managedLinodeSettingsSsh obj))))
instance Data.Aeson.Types.FromJSON.FromJSON ManagedLinodeSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ManagedLinodeSettings" (\obj -> (((GHC.Base.pure ManagedLinodeSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssh"))
-- | Defines the data type for the schema ManagedLinodeSettingsSsh
-- 
-- The SSH settings for this Linode.
data ManagedLinodeSettingsSsh = ManagedLinodeSettingsSsh {
  -- | access: If true, Linode special forces may access this Linode over ssh to respond to Issues.
  managedLinodeSettingsSshAccess :: (GHC.Base.Maybe GHC.Types.Bool)
  -- | ip: The IP Linode special forces should use to access this Linode when responding to an Issue.
  , managedLinodeSettingsSshIp :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | port: The port Linode special forces should use to access this Linode over ssh to respond to an Issue.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 65535.0
  -- * Minimum  of 1.0
  , managedLinodeSettingsSshPort :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | user: The user Linode\'s special forces should use when accessing this Linode to respond to an issue.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 32
  -- * Minimum length of 0
  , managedLinodeSettingsSshUser :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ManagedLinodeSettingsSsh
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "access" (managedLinodeSettingsSshAccess obj) : (Data.Aeson..=) "ip" (managedLinodeSettingsSshIp obj) : (Data.Aeson..=) "port" (managedLinodeSettingsSshPort obj) : (Data.Aeson..=) "user" (managedLinodeSettingsSshUser obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "access" (managedLinodeSettingsSshAccess obj) GHC.Base.<> ((Data.Aeson..=) "ip" (managedLinodeSettingsSshIp obj) GHC.Base.<> ((Data.Aeson..=) "port" (managedLinodeSettingsSshPort obj) GHC.Base.<> (Data.Aeson..=) "user" (managedLinodeSettingsSshUser obj))))
instance Data.Aeson.Types.FromJSON.FromJSON ManagedLinodeSettingsSsh
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ManagedLinodeSettingsSsh" (\obj -> (((GHC.Base.pure ManagedLinodeSettingsSsh GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "access")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "port")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user"))