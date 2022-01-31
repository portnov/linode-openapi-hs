module Linode.Types.Notification where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Notification
instance Show Notification
instance Eq Notification
instance FromJSON Notification
instance ToJSON Notification
data NotificationEntity'
instance Show NotificationEntity'
instance Eq NotificationEntity'
instance FromJSON NotificationEntity'
instance ToJSON NotificationEntity'
data NotificationSeverity'
instance Show NotificationSeverity'
instance Eq NotificationSeverity'
instance FromJSON NotificationSeverity'
instance ToJSON NotificationSeverity'
data NotificationType'
instance Show NotificationType'
instance Eq NotificationType'
instance FromJSON NotificationType'
instance ToJSON NotificationType'
