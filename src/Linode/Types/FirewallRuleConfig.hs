-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema FirewallRuleConfig
module Linode.Types.FirewallRuleConfig where

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

-- | Defines the data type for the schema FirewallRuleConfig
-- 
-- One of a Firewall\'s inbound or outbound access rules. The \`ports\` property can be used to allow traffic on a comma-separated list of different ports.
data FirewallRuleConfig = FirewallRuleConfig {
  -- | action: Controls whether traffic is accepted or dropped by this rule. Overrides the Firewall\'s \`inbound_policy\` if this is an inbound rule, or the \`outbound_policy\` if this is an outbound rule.
  firewallRuleConfigAction :: (GHC.Base.Maybe FirewallRuleConfigAction)
  -- | addresses: Allowed IPv4 or IPv6 addresses. A Rule can have up to 255 addresses or networks listed across its IPv4 and IPv6 arrays. A network and a single IP are treated as equivalent when accounting for this limit.
  , firewallRuleConfigAddresses :: (GHC.Base.Maybe FirewallRuleConfigAddresses)
  -- | description: Used to describe this rule. For display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  -- * Minimum length of 1
  , firewallRuleConfigDescription :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | label: Used to identify this rule. For display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 32
  -- * Minimum length of 3
  , firewallRuleConfigLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
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
  , firewallRuleConfigPorts :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | protocol: The type of network traffic to allow.
  , firewallRuleConfigProtocol :: (GHC.Base.Maybe FirewallRuleConfigProtocol)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON FirewallRuleConfig
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (firewallRuleConfigAction obj) : (Data.Aeson..=) "addresses" (firewallRuleConfigAddresses obj) : (Data.Aeson..=) "description" (firewallRuleConfigDescription obj) : (Data.Aeson..=) "label" (firewallRuleConfigLabel obj) : (Data.Aeson..=) "ports" (firewallRuleConfigPorts obj) : (Data.Aeson..=) "protocol" (firewallRuleConfigProtocol obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (firewallRuleConfigAction obj) GHC.Base.<> ((Data.Aeson..=) "addresses" (firewallRuleConfigAddresses obj) GHC.Base.<> ((Data.Aeson..=) "description" (firewallRuleConfigDescription obj) GHC.Base.<> ((Data.Aeson..=) "label" (firewallRuleConfigLabel obj) GHC.Base.<> ((Data.Aeson..=) "ports" (firewallRuleConfigPorts obj) GHC.Base.<> (Data.Aeson..=) "protocol" (firewallRuleConfigProtocol obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON FirewallRuleConfig
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FirewallRuleConfig" (\obj -> (((((GHC.Base.pure FirewallRuleConfig GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "addresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ports")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "protocol"))
-- | Defines the enum schema FirewallRuleConfigAction
-- 
-- Controls whether traffic is accepted or dropped by this rule. Overrides the Firewall\'s \`inbound_policy\` if this is an inbound rule, or the \`outbound_policy\` if this is an outbound rule.
data FirewallRuleConfigAction
    = FirewallRuleConfigActionEnumOther Data.Aeson.Types.Internal.Value
    | FirewallRuleConfigActionEnumTyped Data.Text.Internal.Text
    | FirewallRuleConfigActionEnumString_ACCEPT
    | FirewallRuleConfigActionEnumString_DROP
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON FirewallRuleConfigAction
    where toJSON (FirewallRuleConfigActionEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (FirewallRuleConfigActionEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (FirewallRuleConfigActionEnumString_ACCEPT) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ACCEPT"
          toJSON (FirewallRuleConfigActionEnumString_DROP) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "DROP"
instance Data.Aeson.FromJSON FirewallRuleConfigAction
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ACCEPT")
                                          then FirewallRuleConfigActionEnumString_ACCEPT
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "DROP")
                                                then FirewallRuleConfigActionEnumString_DROP
                                                else FirewallRuleConfigActionEnumOther val)
-- | Defines the data type for the schema FirewallRuleConfigAddresses
-- 
-- Allowed IPv4 or IPv6 addresses. A Rule can have up to 255 addresses or networks listed across its IPv4 and IPv6 arrays. A network and a single IP are treated as equivalent when accounting for this limit.
data FirewallRuleConfigAddresses = FirewallRuleConfigAddresses {
  -- | ipv4: A list of IPv4 addresses or networks. Must be in IP\/mask format.
  firewallRuleConfigAddressesIpv4 :: (GHC.Base.Maybe ([] Data.Text.Internal.Text))
  -- | ipv6: A list of IPv6 addresses or networks. Must be in IP\/mask format.
  , firewallRuleConfigAddressesIpv6 :: (GHC.Base.Maybe ([] Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON FirewallRuleConfigAddresses
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ipv4" (firewallRuleConfigAddressesIpv4 obj) : (Data.Aeson..=) "ipv6" (firewallRuleConfigAddressesIpv6 obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ipv4" (firewallRuleConfigAddressesIpv4 obj) GHC.Base.<> (Data.Aeson..=) "ipv6" (firewallRuleConfigAddressesIpv6 obj))
instance Data.Aeson.Types.FromJSON.FromJSON FirewallRuleConfigAddresses
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FirewallRuleConfigAddresses" (\obj -> (GHC.Base.pure FirewallRuleConfigAddresses GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ipv4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ipv6"))
-- | Defines the enum schema FirewallRuleConfigProtocol
-- 
-- The type of network traffic to allow.
data FirewallRuleConfigProtocol
    = FirewallRuleConfigProtocolEnumOther Data.Aeson.Types.Internal.Value
    | FirewallRuleConfigProtocolEnumTyped Data.Text.Internal.Text
    | FirewallRuleConfigProtocolEnumString_ICMP
    | FirewallRuleConfigProtocolEnumString_TCP
    | FirewallRuleConfigProtocolEnumString_UDP
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON FirewallRuleConfigProtocol
    where toJSON (FirewallRuleConfigProtocolEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (FirewallRuleConfigProtocolEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (FirewallRuleConfigProtocolEnumString_ICMP) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ICMP"
          toJSON (FirewallRuleConfigProtocolEnumString_TCP) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "TCP"
          toJSON (FirewallRuleConfigProtocolEnumString_UDP) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "UDP"
instance Data.Aeson.FromJSON FirewallRuleConfigProtocol
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ICMP")
                                          then FirewallRuleConfigProtocolEnumString_ICMP
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "TCP")
                                                then FirewallRuleConfigProtocolEnumString_TCP
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "UDP")
                                                      then FirewallRuleConfigProtocolEnumString_UDP
                                                      else FirewallRuleConfigProtocolEnumOther val)