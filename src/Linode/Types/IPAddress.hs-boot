module Linode.Types.IPAddress where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data IPAddress
instance Show IPAddress
instance Eq IPAddress
instance FromJSON IPAddress
instance ToJSON IPAddress
data IPAddressType'
instance Show IPAddressType'
instance Eq IPAddressType'
instance FromJSON IPAddressType'
instance ToJSON IPAddressType'
