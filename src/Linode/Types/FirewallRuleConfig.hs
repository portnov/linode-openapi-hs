-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema FirewallRuleConfig
module Linode.Types.FirewallRuleConfig where

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

-- | Defines the object schema located at @components.schemas.FirewallRuleConfig@ in the specification.
-- 
-- One of a Firewall\'s inbound or outbound access rules. The \`ports\` property can be used to allow traffic on a comma-separated list of different ports.
data FirewallRuleConfig = FirewallRuleConfig {
  -- | action: Controls whether traffic is accepted or dropped by this rule. Overrides the Firewall\'s \`inbound_policy\` if this is an inbound rule, or the \`outbound_policy\` if this is an outbound rule.
  firewallRuleConfigAction :: (GHC.Maybe.Maybe FirewallRuleConfigAction')
  -- | addresses: Allowed IPv4 or IPv6 addresses. A Rule can have up to 255 addresses or networks listed across its IPv4 and IPv6 arrays. A network and a single IP are treated as equivalent when accounting for this limit.
  , firewallRuleConfigAddresses :: (GHC.Maybe.Maybe FirewallRuleConfigAddresses')
  -- | description: Used to describe this rule. For display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  -- * Minimum length of 1
  , firewallRuleConfigDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | label: Used to identify this rule. For display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 32
  -- * Minimum length of 3
  , firewallRuleConfigLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ports: A string representing the port or ports on which traffic will be allowed:
  -- 
  -- - The string may be a single port, a range of ports, or a comma-separated list
  -- of single ports and port ranges. A space is permitted following each comma.
  -- - A range of ports is inclusive of the start and end values for the range. The
  -- end value of the range must be greater than the start value.
  -- - Ports must be within 1 and 65535, and may not contain any leading zeroes. For example, port \"080\" is not allowed.
  -- - Ports may not be specified if a rule\'s protocol is \`ICMP\`. At least one port
  -- must be specified if a rule\'s protocol is \`TCP\` or \`UDP\`.
  -- - The ports string can have up to 15 *pieces*, where a single port is treated
  -- as one piece, and a port range is treated as two pieces. For example,
  -- the string \"22-24, 80, 443\" has four pieces.
  , firewallRuleConfigPorts :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | protocol: The type of network traffic to allow.
  , firewallRuleConfigProtocol :: (GHC.Maybe.Maybe FirewallRuleConfigProtocol')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FirewallRuleConfig
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= firewallRuleConfigAction obj : "addresses" Data.Aeson.Types.ToJSON..= firewallRuleConfigAddresses obj : "description" Data.Aeson.Types.ToJSON..= firewallRuleConfigDescription obj : "label" Data.Aeson.Types.ToJSON..= firewallRuleConfigLabel obj : "ports" Data.Aeson.Types.ToJSON..= firewallRuleConfigPorts obj : "protocol" Data.Aeson.Types.ToJSON..= firewallRuleConfigProtocol obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("action" Data.Aeson.Types.ToJSON..= firewallRuleConfigAction obj) GHC.Base.<> (("addresses" Data.Aeson.Types.ToJSON..= firewallRuleConfigAddresses obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= firewallRuleConfigDescription obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= firewallRuleConfigLabel obj) GHC.Base.<> (("ports" Data.Aeson.Types.ToJSON..= firewallRuleConfigPorts obj) GHC.Base.<> ("protocol" Data.Aeson.Types.ToJSON..= firewallRuleConfigProtocol obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON FirewallRuleConfig
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FirewallRuleConfig" (\obj -> (((((GHC.Base.pure FirewallRuleConfig GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "addresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ports")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "protocol"))
-- | Create a new 'FirewallRuleConfig' with all required fields.
mkFirewallRuleConfig :: FirewallRuleConfig
mkFirewallRuleConfig = FirewallRuleConfig{firewallRuleConfigAction = GHC.Maybe.Nothing,
                                          firewallRuleConfigAddresses = GHC.Maybe.Nothing,
                                          firewallRuleConfigDescription = GHC.Maybe.Nothing,
                                          firewallRuleConfigLabel = GHC.Maybe.Nothing,
                                          firewallRuleConfigPorts = GHC.Maybe.Nothing,
                                          firewallRuleConfigProtocol = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.FirewallRuleConfig.properties.action@ in the specification.
-- 
-- Controls whether traffic is accepted or dropped by this rule. Overrides the Firewall\'s \`inbound_policy\` if this is an inbound rule, or the \`outbound_policy\` if this is an outbound rule.
data FirewallRuleConfigAction' =
   FirewallRuleConfigAction'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | FirewallRuleConfigAction'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | FirewallRuleConfigAction'EnumACCEPT -- ^ Represents the JSON value @"ACCEPT"@
  | FirewallRuleConfigAction'EnumDROP -- ^ Represents the JSON value @"DROP"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FirewallRuleConfigAction'
    where toJSON (FirewallRuleConfigAction'Other val) = val
          toJSON (FirewallRuleConfigAction'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (FirewallRuleConfigAction'EnumACCEPT) = "ACCEPT"
          toJSON (FirewallRuleConfigAction'EnumDROP) = "DROP"
instance Data.Aeson.Types.FromJSON.FromJSON FirewallRuleConfigAction'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "ACCEPT" -> FirewallRuleConfigAction'EnumACCEPT
                                            | val GHC.Classes.== "DROP" -> FirewallRuleConfigAction'EnumDROP
                                            | GHC.Base.otherwise -> FirewallRuleConfigAction'Other val)
-- | Defines the object schema located at @components.schemas.FirewallRuleConfig.properties.addresses@ in the specification.
-- 
-- Allowed IPv4 or IPv6 addresses. A Rule can have up to 255 addresses or networks listed across its IPv4 and IPv6 arrays. A network and a single IP are treated as equivalent when accounting for this limit.
data FirewallRuleConfigAddresses' = FirewallRuleConfigAddresses' {
  -- | ipv4: A list of IPv4 addresses or networks. Must be in IP\/mask format.
  firewallRuleConfigAddresses'Ipv4 :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | ipv6: A list of IPv6 addresses or networks. Must be in IP\/mask format.
  , firewallRuleConfigAddresses'Ipv6 :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FirewallRuleConfigAddresses'
    where toJSON obj = Data.Aeson.Types.Internal.object ("ipv4" Data.Aeson.Types.ToJSON..= firewallRuleConfigAddresses'Ipv4 obj : "ipv6" Data.Aeson.Types.ToJSON..= firewallRuleConfigAddresses'Ipv6 obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ipv4" Data.Aeson.Types.ToJSON..= firewallRuleConfigAddresses'Ipv4 obj) GHC.Base.<> ("ipv6" Data.Aeson.Types.ToJSON..= firewallRuleConfigAddresses'Ipv6 obj))
instance Data.Aeson.Types.FromJSON.FromJSON FirewallRuleConfigAddresses'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FirewallRuleConfigAddresses'" (\obj -> (GHC.Base.pure FirewallRuleConfigAddresses' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ipv4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ipv6"))
-- | Create a new 'FirewallRuleConfigAddresses'' with all required fields.
mkFirewallRuleConfigAddresses' :: FirewallRuleConfigAddresses'
mkFirewallRuleConfigAddresses' = FirewallRuleConfigAddresses'{firewallRuleConfigAddresses'Ipv4 = GHC.Maybe.Nothing,
                                                              firewallRuleConfigAddresses'Ipv6 = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.FirewallRuleConfig.properties.protocol@ in the specification.
-- 
-- The type of network traffic to allow.
data FirewallRuleConfigProtocol' =
   FirewallRuleConfigProtocol'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | FirewallRuleConfigProtocol'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | FirewallRuleConfigProtocol'EnumTCP -- ^ Represents the JSON value @"TCP"@
  | FirewallRuleConfigProtocol'EnumUDP -- ^ Represents the JSON value @"UDP"@
  | FirewallRuleConfigProtocol'EnumICMP -- ^ Represents the JSON value @"ICMP"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FirewallRuleConfigProtocol'
    where toJSON (FirewallRuleConfigProtocol'Other val) = val
          toJSON (FirewallRuleConfigProtocol'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (FirewallRuleConfigProtocol'EnumTCP) = "TCP"
          toJSON (FirewallRuleConfigProtocol'EnumUDP) = "UDP"
          toJSON (FirewallRuleConfigProtocol'EnumICMP) = "ICMP"
instance Data.Aeson.Types.FromJSON.FromJSON FirewallRuleConfigProtocol'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "TCP" -> FirewallRuleConfigProtocol'EnumTCP
                                            | val GHC.Classes.== "UDP" -> FirewallRuleConfigProtocol'EnumUDP
                                            | val GHC.Classes.== "ICMP" -> FirewallRuleConfigProtocol'EnumICMP
                                            | GHC.Base.otherwise -> FirewallRuleConfigProtocol'Other val)
