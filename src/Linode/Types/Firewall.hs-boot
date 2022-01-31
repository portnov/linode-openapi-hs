module Linode.Types.Firewall where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Firewall
instance Show Firewall
instance Eq Firewall
instance FromJSON Firewall
instance ToJSON Firewall
data FirewallRules'
instance Show FirewallRules'
instance Eq FirewallRules'
instance FromJSON FirewallRules'
instance ToJSON FirewallRules'
data FirewallRules'InboundPolicy'
instance Show FirewallRules'InboundPolicy'
instance Eq FirewallRules'InboundPolicy'
instance FromJSON FirewallRules'InboundPolicy'
instance ToJSON FirewallRules'InboundPolicy'
data FirewallRules'OutboundPolicy'
instance Show FirewallRules'OutboundPolicy'
instance Eq FirewallRules'OutboundPolicy'
instance FromJSON FirewallRules'OutboundPolicy'
instance ToJSON FirewallRules'OutboundPolicy'
data FirewallStatus'
instance Show FirewallStatus'
instance Eq FirewallStatus'
instance FromJSON FirewallStatus'
instance ToJSON FirewallStatus'
