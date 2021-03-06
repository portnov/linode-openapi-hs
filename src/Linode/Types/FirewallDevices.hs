-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema FirewallDevices
module Linode.Types.FirewallDevices where

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

-- | Defines the object schema located at @components.schemas.FirewallDevices@ in the specification.
-- 
-- Associates a Firewall with a Linode service. A Firewall can be assigned to a single Linode service at a time. Additional disabled Firewalls can be assigned to a service, but they cannot be enabled if another active Firewall is already assigned to the same service.
data FirewallDevices = FirewallDevices {
  -- | created: When this Device was created.
  firewallDevicesCreated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | entity: The Linode service that this Firewall has been applied to.
  , firewallDevicesEntity :: (GHC.Maybe.Maybe FirewallDevicesEntity')
  -- | id: The Device\'s unique ID
  , firewallDevicesId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | updated: When this Device was last updated.
  , firewallDevicesUpdated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FirewallDevices
    where toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= firewallDevicesCreated obj : "entity" Data.Aeson.Types.ToJSON..= firewallDevicesEntity obj : "id" Data.Aeson.Types.ToJSON..= firewallDevicesId obj : "updated" Data.Aeson.Types.ToJSON..= firewallDevicesUpdated obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= firewallDevicesCreated obj) GHC.Base.<> (("entity" Data.Aeson.Types.ToJSON..= firewallDevicesEntity obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= firewallDevicesId obj) GHC.Base.<> ("updated" Data.Aeson.Types.ToJSON..= firewallDevicesUpdated obj))))
instance Data.Aeson.Types.FromJSON.FromJSON FirewallDevices
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FirewallDevices" (\obj -> (((GHC.Base.pure FirewallDevices GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated"))
-- | Create a new 'FirewallDevices' with all required fields.
mkFirewallDevices :: FirewallDevices
mkFirewallDevices = FirewallDevices{firewallDevicesCreated = GHC.Maybe.Nothing,
                                    firewallDevicesEntity = GHC.Maybe.Nothing,
                                    firewallDevicesId = GHC.Maybe.Nothing,
                                    firewallDevicesUpdated = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.FirewallDevices.properties.entity@ in the specification.
-- 
-- The Linode service that this Firewall has been applied to.
data FirewallDevicesEntity' = FirewallDevicesEntity' {
  -- | id: The entity\'s ID
  firewallDevicesEntity'Id :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | label: The entity\'s label.
  , firewallDevicesEntity'Label :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: The entity\'s type.
  , firewallDevicesEntity'Type :: (GHC.Maybe.Maybe FirewallDevicesEntity'Type')
  -- | url: The URL you can use to access this entity.
  , firewallDevicesEntity'Url :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FirewallDevicesEntity'
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= firewallDevicesEntity'Id obj : "label" Data.Aeson.Types.ToJSON..= firewallDevicesEntity'Label obj : "type" Data.Aeson.Types.ToJSON..= firewallDevicesEntity'Type obj : "url" Data.Aeson.Types.ToJSON..= firewallDevicesEntity'Url obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= firewallDevicesEntity'Id obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= firewallDevicesEntity'Label obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= firewallDevicesEntity'Type obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= firewallDevicesEntity'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON FirewallDevicesEntity'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FirewallDevicesEntity'" (\obj -> (((GHC.Base.pure FirewallDevicesEntity' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
-- | Create a new 'FirewallDevicesEntity'' with all required fields.
mkFirewallDevicesEntity' :: FirewallDevicesEntity'
mkFirewallDevicesEntity' = FirewallDevicesEntity'{firewallDevicesEntity'Id = GHC.Maybe.Nothing,
                                                  firewallDevicesEntity'Label = GHC.Maybe.Nothing,
                                                  firewallDevicesEntity'Type = GHC.Maybe.Nothing,
                                                  firewallDevicesEntity'Url = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.FirewallDevices.properties.entity.properties.type@ in the specification.
-- 
-- The entity\'s type.
data FirewallDevicesEntity'Type' =
   FirewallDevicesEntity'Type'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | FirewallDevicesEntity'Type'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | FirewallDevicesEntity'Type'EnumLinode -- ^ Represents the JSON value @"linode"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FirewallDevicesEntity'Type'
    where toJSON (FirewallDevicesEntity'Type'Other val) = val
          toJSON (FirewallDevicesEntity'Type'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (FirewallDevicesEntity'Type'EnumLinode) = "linode"
instance Data.Aeson.Types.FromJSON.FromJSON FirewallDevicesEntity'Type'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "linode" -> FirewallDevicesEntity'Type'EnumLinode
                                            | GHC.Base.otherwise -> FirewallDevicesEntity'Type'Other val)
