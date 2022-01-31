module Linode.Types.Event where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Event
instance Show Event
instance Eq Event
instance FromJSON Event
instance ToJSON Event
data EventAction'
instance Show EventAction'
instance Eq EventAction'
instance FromJSON EventAction'
instance ToJSON EventAction'
data EventEntity'
instance Show EventEntity'
instance Eq EventEntity'
instance FromJSON EventEntity'
instance ToJSON EventEntity'
data EventEntity'Type'
instance Show EventEntity'Type'
instance Eq EventEntity'Type'
instance FromJSON EventEntity'Type'
instance ToJSON EventEntity'Type'
data EventSecondaryEntity'
instance Show EventSecondaryEntity'
instance Eq EventSecondaryEntity'
instance FromJSON EventSecondaryEntity'
instance ToJSON EventSecondaryEntity'
data EventStatus'
instance Show EventStatus'
instance Eq EventStatus'
instance FromJSON EventStatus'
instance ToJSON EventStatus'
