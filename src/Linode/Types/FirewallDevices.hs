-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema FirewallDevices
module Linode.Types.FirewallDevices where

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

-- | Defines the data type for the schema FirewallDevices
-- 
-- Associates a Firewall with a Linode service. A Firewall can be assigned to a single Linode service at a time. Additional disabled Firewalls can be assigned to a service, but they cannot be enabled if another active Firewall is already assigned to the same service.
data FirewallDevices = FirewallDevices {
  -- | created: When this Device was created.
  firewallDevicesCreated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | entity: The Linode service that this Firewall has been applied to.
  , firewallDevicesEntity :: (GHC.Base.Maybe FirewallDevicesEntity)
  -- | id: The Device\'s unique ID
  , firewallDevicesId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | updated: When this Device was last updated.
  , firewallDevicesUpdated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON FirewallDevices
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (firewallDevicesCreated obj) : (Data.Aeson..=) "entity" (firewallDevicesEntity obj) : (Data.Aeson..=) "id" (firewallDevicesId obj) : (Data.Aeson..=) "updated" (firewallDevicesUpdated obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (firewallDevicesCreated obj) GHC.Base.<> ((Data.Aeson..=) "entity" (firewallDevicesEntity obj) GHC.Base.<> ((Data.Aeson..=) "id" (firewallDevicesId obj) GHC.Base.<> (Data.Aeson..=) "updated" (firewallDevicesUpdated obj))))
instance Data.Aeson.Types.FromJSON.FromJSON FirewallDevices
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FirewallDevices" (\obj -> (((GHC.Base.pure FirewallDevices GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated"))
-- | Defines the data type for the schema FirewallDevicesEntity
-- 
-- The Linode service that this Firewall has been applied to.
data FirewallDevicesEntity = FirewallDevicesEntity {
  -- | id: The entity\'s ID
  firewallDevicesEntityId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | label: The entity\'s label.
  , firewallDevicesEntityLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | type: The entity\'s type.
  , firewallDevicesEntityType :: (GHC.Base.Maybe FirewallDevicesEntityType)
  -- | url: The URL you can use to access this entity.
  , firewallDevicesEntityUrl :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON FirewallDevicesEntity
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (firewallDevicesEntityId obj) : (Data.Aeson..=) "label" (firewallDevicesEntityLabel obj) : (Data.Aeson..=) "type" (firewallDevicesEntityType obj) : (Data.Aeson..=) "url" (firewallDevicesEntityUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (firewallDevicesEntityId obj) GHC.Base.<> ((Data.Aeson..=) "label" (firewallDevicesEntityLabel obj) GHC.Base.<> ((Data.Aeson..=) "type" (firewallDevicesEntityType obj) GHC.Base.<> (Data.Aeson..=) "url" (firewallDevicesEntityUrl obj))))
instance Data.Aeson.Types.FromJSON.FromJSON FirewallDevicesEntity
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FirewallDevicesEntity" (\obj -> (((GHC.Base.pure FirewallDevicesEntity GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
-- | Defines the enum schema FirewallDevicesEntityType
-- 
-- The entity\'s type.
data FirewallDevicesEntityType
    = FirewallDevicesEntityTypeEnumOther Data.Aeson.Types.Internal.Value
    | FirewallDevicesEntityTypeEnumTyped Data.Text.Internal.Text
    | FirewallDevicesEntityTypeEnumString_linode
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON FirewallDevicesEntityType
    where toJSON (FirewallDevicesEntityTypeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (FirewallDevicesEntityTypeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (FirewallDevicesEntityTypeEnumString_linode) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "linode"
instance Data.Aeson.FromJSON FirewallDevicesEntityType
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "linode")
                                          then FirewallDevicesEntityTypeEnumString_linode
                                          else FirewallDevicesEntityTypeEnumOther val)