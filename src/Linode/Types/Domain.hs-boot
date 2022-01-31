module Linode.Types.Domain where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Domain
instance Show Domain
instance Eq Domain
instance FromJSON Domain
instance ToJSON Domain
data DomainStatus'
instance Show DomainStatus'
instance Eq DomainStatus'
instance FromJSON DomainStatus'
instance ToJSON DomainStatus'
data DomainType'
instance Show DomainType'
instance Eq DomainType'
instance FromJSON DomainType'
instance ToJSON DomainType'
