-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema FirewallDevicesPropertiesEntity
module Linode.Types.FirewallDevicesPropertiesEntity where

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

-- | Defines the object schema located at @components.schemas.FirewallDevicesPropertiesEntity@ in the specification.
-- 
-- The Linode service that this Firewall has been applied to.
data FirewallDevicesPropertiesEntity = FirewallDevicesPropertiesEntity {
  -- | id: The entity\'s ID
  firewallDevicesPropertiesEntityId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | label: The entity\'s label.
  , firewallDevicesPropertiesEntityLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: The entity\'s type.
  , firewallDevicesPropertiesEntityType :: (GHC.Maybe.Maybe FirewallDevicesPropertiesEntityType')
  -- | url: The URL you can use to access this entity.
  , firewallDevicesPropertiesEntityUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FirewallDevicesPropertiesEntity
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= firewallDevicesPropertiesEntityId obj : "label" Data.Aeson.Types.ToJSON..= firewallDevicesPropertiesEntityLabel obj : "type" Data.Aeson.Types.ToJSON..= firewallDevicesPropertiesEntityType obj : "url" Data.Aeson.Types.ToJSON..= firewallDevicesPropertiesEntityUrl obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= firewallDevicesPropertiesEntityId obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= firewallDevicesPropertiesEntityLabel obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= firewallDevicesPropertiesEntityType obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= firewallDevicesPropertiesEntityUrl obj))))
instance Data.Aeson.Types.FromJSON.FromJSON FirewallDevicesPropertiesEntity
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FirewallDevicesPropertiesEntity" (\obj -> (((GHC.Base.pure FirewallDevicesPropertiesEntity GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
-- | Create a new 'FirewallDevicesPropertiesEntity' with all required fields.
mkFirewallDevicesPropertiesEntity :: FirewallDevicesPropertiesEntity
mkFirewallDevicesPropertiesEntity = FirewallDevicesPropertiesEntity{firewallDevicesPropertiesEntityId = GHC.Maybe.Nothing,
                                                                    firewallDevicesPropertiesEntityLabel = GHC.Maybe.Nothing,
                                                                    firewallDevicesPropertiesEntityType = GHC.Maybe.Nothing,
                                                                    firewallDevicesPropertiesEntityUrl = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.FirewallDevicesPropertiesEntity.properties.type@ in the specification.
-- 
-- The entity\'s type.
data FirewallDevicesPropertiesEntityType' =
   FirewallDevicesPropertiesEntityType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | FirewallDevicesPropertiesEntityType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | FirewallDevicesPropertiesEntityType'EnumLinode -- ^ Represents the JSON value @"linode"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FirewallDevicesPropertiesEntityType'
    where toJSON (FirewallDevicesPropertiesEntityType'Other val) = val
          toJSON (FirewallDevicesPropertiesEntityType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (FirewallDevicesPropertiesEntityType'EnumLinode) = "linode"
instance Data.Aeson.Types.FromJSON.FromJSON FirewallDevicesPropertiesEntityType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "linode" -> FirewallDevicesPropertiesEntityType'EnumLinode
                                            | GHC.Base.otherwise -> FirewallDevicesPropertiesEntityType'Other val)
