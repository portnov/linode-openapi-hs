-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Notification
module Linode.Types.Notification where

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

-- | Defines the object schema located at @components.schemas.Notification@ in the specification.
-- 
-- An important, often time-sensitive item related to your Account.
data Notification = Notification {
  -- | body: A full description of this Notification, in markdown format.  Not all Notifications include bodies.
  notificationBody :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | entity: Detailed information about the Notification.
  , notificationEntity :: (GHC.Maybe.Maybe NotificationEntity')
  -- | label: A short description of this Notification.
  , notificationLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | message: A human-readable description of the Notification.
  , notificationMessage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | severity: The severity of this Notification.  This field can be used to decide how prominently to display the Notification, what color to make the display text, etc.
  , notificationSeverity :: (GHC.Maybe.Maybe NotificationSeverity')
  -- | type: The type of Notification this is.
  , notificationType :: (GHC.Maybe.Maybe NotificationType')
  -- | until: If this Notification has a duration, this will be the ending time for the Event\/action. For example, if there is scheduled maintenance for one of our systems, \`until\` would be set to the end of the maintenance window.
  , notificationUntil :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | when: If this Notification is of an Event that will happen at a fixed, future time, this is when the named action will be taken. For example, if a Linode is to be migrated in response to a Security Advisory, this field will contain the approximate time the Linode will be taken offline for migration.
  , notificationWhen :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Notification
    where toJSON obj = Data.Aeson.Types.Internal.object ("body" Data.Aeson.Types.ToJSON..= notificationBody obj : "entity" Data.Aeson.Types.ToJSON..= notificationEntity obj : "label" Data.Aeson.Types.ToJSON..= notificationLabel obj : "message" Data.Aeson.Types.ToJSON..= notificationMessage obj : "severity" Data.Aeson.Types.ToJSON..= notificationSeverity obj : "type" Data.Aeson.Types.ToJSON..= notificationType obj : "until" Data.Aeson.Types.ToJSON..= notificationUntil obj : "when" Data.Aeson.Types.ToJSON..= notificationWhen obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("body" Data.Aeson.Types.ToJSON..= notificationBody obj) GHC.Base.<> (("entity" Data.Aeson.Types.ToJSON..= notificationEntity obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= notificationLabel obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= notificationMessage obj) GHC.Base.<> (("severity" Data.Aeson.Types.ToJSON..= notificationSeverity obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= notificationType obj) GHC.Base.<> (("until" Data.Aeson.Types.ToJSON..= notificationUntil obj) GHC.Base.<> ("when" Data.Aeson.Types.ToJSON..= notificationWhen obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Notification
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Notification" (\obj -> (((((((GHC.Base.pure Notification GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "body")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "severity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "until")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "when"))
-- | Create a new 'Notification' with all required fields.
mkNotification :: Notification
mkNotification = Notification{notificationBody = GHC.Maybe.Nothing,
                              notificationEntity = GHC.Maybe.Nothing,
                              notificationLabel = GHC.Maybe.Nothing,
                              notificationMessage = GHC.Maybe.Nothing,
                              notificationSeverity = GHC.Maybe.Nothing,
                              notificationType = GHC.Maybe.Nothing,
                              notificationUntil = GHC.Maybe.Nothing,
                              notificationWhen = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.Notification.properties.entity@ in the specification.
-- 
-- Detailed information about the Notification.
data NotificationEntity' = NotificationEntity' {
  -- | id: The unique ID of the Notification\'s entity, based on the entity type.
  notificationEntity'Id :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | label: The current label for this Notification\'s entity.
  , notificationEntity'Label :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: The type of entity this is related to.
  , notificationEntity'Type :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | url: The URL where you can access the object this Notification is for. If a relative URL, it is relative to the domain you retrieved the Notification from.
  , notificationEntity'Url :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON NotificationEntity'
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= notificationEntity'Id obj : "label" Data.Aeson.Types.ToJSON..= notificationEntity'Label obj : "type" Data.Aeson.Types.ToJSON..= notificationEntity'Type obj : "url" Data.Aeson.Types.ToJSON..= notificationEntity'Url obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= notificationEntity'Id obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= notificationEntity'Label obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= notificationEntity'Type obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= notificationEntity'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON NotificationEntity'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "NotificationEntity'" (\obj -> (((GHC.Base.pure NotificationEntity' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
-- | Create a new 'NotificationEntity'' with all required fields.
mkNotificationEntity' :: NotificationEntity'
mkNotificationEntity' = NotificationEntity'{notificationEntity'Id = GHC.Maybe.Nothing,
                                            notificationEntity'Label = GHC.Maybe.Nothing,
                                            notificationEntity'Type = GHC.Maybe.Nothing,
                                            notificationEntity'Url = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.Notification.properties.severity@ in the specification.
-- 
-- The severity of this Notification.  This field can be used to decide how prominently to display the Notification, what color to make the display text, etc.
data NotificationSeverity' =
   NotificationSeverity'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | NotificationSeverity'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | NotificationSeverity'EnumMinor -- ^ Represents the JSON value @"minor"@
  | NotificationSeverity'EnumMajor -- ^ Represents the JSON value @"major"@
  | NotificationSeverity'EnumCritical -- ^ Represents the JSON value @"critical"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON NotificationSeverity'
    where toJSON (NotificationSeverity'Other val) = val
          toJSON (NotificationSeverity'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (NotificationSeverity'EnumMinor) = "minor"
          toJSON (NotificationSeverity'EnumMajor) = "major"
          toJSON (NotificationSeverity'EnumCritical) = "critical"
instance Data.Aeson.Types.FromJSON.FromJSON NotificationSeverity'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "minor" -> NotificationSeverity'EnumMinor
                                            | val GHC.Classes.== "major" -> NotificationSeverity'EnumMajor
                                            | val GHC.Classes.== "critical" -> NotificationSeverity'EnumCritical
                                            | GHC.Base.otherwise -> NotificationSeverity'Other val)
-- | Defines the enum schema located at @components.schemas.Notification.properties.type@ in the specification.
-- 
-- The type of Notification this is.
data NotificationType' =
   NotificationType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | NotificationType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | NotificationType'EnumMigrationScheduled -- ^ Represents the JSON value @"migration_scheduled"@
  | NotificationType'EnumMigrationImminent -- ^ Represents the JSON value @"migration_imminent"@
  | NotificationType'EnumMigrationPending -- ^ Represents the JSON value @"migration_pending"@
  | NotificationType'EnumRebootScheduled -- ^ Represents the JSON value @"reboot_scheduled"@
  | NotificationType'EnumOutage -- ^ Represents the JSON value @"outage"@
  | NotificationType'EnumPaymentDue -- ^ Represents the JSON value @"payment_due"@
  | NotificationType'EnumTicketImportant -- ^ Represents the JSON value @"ticket_important"@
  | NotificationType'EnumTicketAbuse -- ^ Represents the JSON value @"ticket_abuse"@
  | NotificationType'EnumNotice -- ^ Represents the JSON value @"notice"@
  | NotificationType'EnumMaintenance -- ^ Represents the JSON value @"maintenance"@
  | NotificationType'EnumPromotion -- ^ Represents the JSON value @"promotion"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON NotificationType'
    where toJSON (NotificationType'Other val) = val
          toJSON (NotificationType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (NotificationType'EnumMigrationScheduled) = "migration_scheduled"
          toJSON (NotificationType'EnumMigrationImminent) = "migration_imminent"
          toJSON (NotificationType'EnumMigrationPending) = "migration_pending"
          toJSON (NotificationType'EnumRebootScheduled) = "reboot_scheduled"
          toJSON (NotificationType'EnumOutage) = "outage"
          toJSON (NotificationType'EnumPaymentDue) = "payment_due"
          toJSON (NotificationType'EnumTicketImportant) = "ticket_important"
          toJSON (NotificationType'EnumTicketAbuse) = "ticket_abuse"
          toJSON (NotificationType'EnumNotice) = "notice"
          toJSON (NotificationType'EnumMaintenance) = "maintenance"
          toJSON (NotificationType'EnumPromotion) = "promotion"
instance Data.Aeson.Types.FromJSON.FromJSON NotificationType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "migration_scheduled" -> NotificationType'EnumMigrationScheduled
                                            | val GHC.Classes.== "migration_imminent" -> NotificationType'EnumMigrationImminent
                                            | val GHC.Classes.== "migration_pending" -> NotificationType'EnumMigrationPending
                                            | val GHC.Classes.== "reboot_scheduled" -> NotificationType'EnumRebootScheduled
                                            | val GHC.Classes.== "outage" -> NotificationType'EnumOutage
                                            | val GHC.Classes.== "payment_due" -> NotificationType'EnumPaymentDue
                                            | val GHC.Classes.== "ticket_important" -> NotificationType'EnumTicketImportant
                                            | val GHC.Classes.== "ticket_abuse" -> NotificationType'EnumTicketAbuse
                                            | val GHC.Classes.== "notice" -> NotificationType'EnumNotice
                                            | val GHC.Classes.== "maintenance" -> NotificationType'EnumMaintenance
                                            | val GHC.Classes.== "promotion" -> NotificationType'EnumPromotion
                                            | GHC.Base.otherwise -> NotificationType'Other val)
