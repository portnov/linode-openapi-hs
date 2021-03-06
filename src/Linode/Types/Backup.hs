-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Backup
module Linode.Types.Backup where

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
import {-# SOURCE #-} Linode.Types.DiskPropertiesFilesystem

-- | Defines the object schema located at @components.schemas.Backup@ in the specification.
-- 
-- An object representing a Backup or snapshot for a Linode with Backup service enabled.
data Backup = Backup {
  -- | configs: A list of the labels of the Configuration profiles that are part of the Backup.
  backupConfigs :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | created: The date the Backup was taken.
  , backupCreated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | disks: A list of the disks that are part of the Backup.
  , backupDisks :: (GHC.Maybe.Maybe ([BackupDisks']))
  -- | finished: The date the Backup completed.
  , backupFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: The unique ID of this Backup.
  , backupId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | label: A label for Backups that are of type \`snapshot\`.
  , backupLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | status: The current state of a specific Backup.
  , backupStatus :: (GHC.Maybe.Maybe BackupStatus')
  -- | type: This indicates whether the Backup is an automatic Backup or manual snapshot taken by the User at a specific point in time.
  , backupType :: (GHC.Maybe.Maybe BackupType')
  -- | updated: The date the Backup was most recently updated.
  , backupUpdated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Backup
    where toJSON obj = Data.Aeson.Types.Internal.object ("configs" Data.Aeson.Types.ToJSON..= backupConfigs obj : "created" Data.Aeson.Types.ToJSON..= backupCreated obj : "disks" Data.Aeson.Types.ToJSON..= backupDisks obj : "finished" Data.Aeson.Types.ToJSON..= backupFinished obj : "id" Data.Aeson.Types.ToJSON..= backupId obj : "label" Data.Aeson.Types.ToJSON..= backupLabel obj : "status" Data.Aeson.Types.ToJSON..= backupStatus obj : "type" Data.Aeson.Types.ToJSON..= backupType obj : "updated" Data.Aeson.Types.ToJSON..= backupUpdated obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("configs" Data.Aeson.Types.ToJSON..= backupConfigs obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= backupCreated obj) GHC.Base.<> (("disks" Data.Aeson.Types.ToJSON..= backupDisks obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= backupFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= backupId obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= backupLabel obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= backupStatus obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= backupType obj) GHC.Base.<> ("updated" Data.Aeson.Types.ToJSON..= backupUpdated obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Backup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Backup" (\obj -> ((((((((GHC.Base.pure Backup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "configs")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated"))
-- | Create a new 'Backup' with all required fields.
mkBackup :: Backup
mkBackup = Backup{backupConfigs = GHC.Maybe.Nothing,
                  backupCreated = GHC.Maybe.Nothing,
                  backupDisks = GHC.Maybe.Nothing,
                  backupFinished = GHC.Maybe.Nothing,
                  backupId = GHC.Maybe.Nothing,
                  backupLabel = GHC.Maybe.Nothing,
                  backupStatus = GHC.Maybe.Nothing,
                  backupType = GHC.Maybe.Nothing,
                  backupUpdated = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.Backup.properties.disks.items@ in the specification.
-- 
-- 
data BackupDisks' = BackupDisks' {
  -- | filesystem: The Disk filesystem can be one of:
  -- 
  --   * raw - No filesystem, just a raw binary stream.
  --   * swap - Linux swap area.
  --   * ext3 - The ext3 journaling filesystem for Linux.
  --   * ext4 - The ext4 journaling filesystem for Linux.
  --   * initrd - initrd (uncompressed initrd, ext2, max 32 MB).
  backupDisks'Filesystem :: (GHC.Maybe.Maybe DiskPropertiesFilesystem)
  -- | label
  , backupDisks'Label :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | size
  , backupDisks'Size :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BackupDisks'
    where toJSON obj = Data.Aeson.Types.Internal.object ("filesystem" Data.Aeson.Types.ToJSON..= backupDisks'Filesystem obj : "label" Data.Aeson.Types.ToJSON..= backupDisks'Label obj : "size" Data.Aeson.Types.ToJSON..= backupDisks'Size obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("filesystem" Data.Aeson.Types.ToJSON..= backupDisks'Filesystem obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= backupDisks'Label obj) GHC.Base.<> ("size" Data.Aeson.Types.ToJSON..= backupDisks'Size obj)))
instance Data.Aeson.Types.FromJSON.FromJSON BackupDisks'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BackupDisks'" (\obj -> ((GHC.Base.pure BackupDisks' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "filesystem")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "size"))
-- | Create a new 'BackupDisks'' with all required fields.
mkBackupDisks' :: BackupDisks'
mkBackupDisks' = BackupDisks'{backupDisks'Filesystem = GHC.Maybe.Nothing,
                              backupDisks'Label = GHC.Maybe.Nothing,
                              backupDisks'Size = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.Backup.properties.status@ in the specification.
-- 
-- The current state of a specific Backup.
data BackupStatus' =
   BackupStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | BackupStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | BackupStatus'EnumPaused -- ^ Represents the JSON value @"paused"@
  | BackupStatus'EnumPending -- ^ Represents the JSON value @"pending"@
  | BackupStatus'EnumRunning -- ^ Represents the JSON value @"running"@
  | BackupStatus'EnumNeedsPostProcessing -- ^ Represents the JSON value @"needsPostProcessing"@
  | BackupStatus'EnumSuccessful -- ^ Represents the JSON value @"successful"@
  | BackupStatus'EnumFailed -- ^ Represents the JSON value @"failed"@
  | BackupStatus'EnumUserAborted -- ^ Represents the JSON value @"userAborted"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BackupStatus'
    where toJSON (BackupStatus'Other val) = val
          toJSON (BackupStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (BackupStatus'EnumPaused) = "paused"
          toJSON (BackupStatus'EnumPending) = "pending"
          toJSON (BackupStatus'EnumRunning) = "running"
          toJSON (BackupStatus'EnumNeedsPostProcessing) = "needsPostProcessing"
          toJSON (BackupStatus'EnumSuccessful) = "successful"
          toJSON (BackupStatus'EnumFailed) = "failed"
          toJSON (BackupStatus'EnumUserAborted) = "userAborted"
instance Data.Aeson.Types.FromJSON.FromJSON BackupStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "paused" -> BackupStatus'EnumPaused
                                            | val GHC.Classes.== "pending" -> BackupStatus'EnumPending
                                            | val GHC.Classes.== "running" -> BackupStatus'EnumRunning
                                            | val GHC.Classes.== "needsPostProcessing" -> BackupStatus'EnumNeedsPostProcessing
                                            | val GHC.Classes.== "successful" -> BackupStatus'EnumSuccessful
                                            | val GHC.Classes.== "failed" -> BackupStatus'EnumFailed
                                            | val GHC.Classes.== "userAborted" -> BackupStatus'EnumUserAborted
                                            | GHC.Base.otherwise -> BackupStatus'Other val)
-- | Defines the enum schema located at @components.schemas.Backup.properties.type@ in the specification.
-- 
-- This indicates whether the Backup is an automatic Backup or manual snapshot taken by the User at a specific point in time.
data BackupType' =
   BackupType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | BackupType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | BackupType'EnumAuto -- ^ Represents the JSON value @"auto"@
  | BackupType'EnumSnapshot -- ^ Represents the JSON value @"snapshot"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BackupType'
    where toJSON (BackupType'Other val) = val
          toJSON (BackupType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (BackupType'EnumAuto) = "auto"
          toJSON (BackupType'EnumSnapshot) = "snapshot"
instance Data.Aeson.Types.FromJSON.FromJSON BackupType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "auto" -> BackupType'EnumAuto
                                            | val GHC.Classes.== "snapshot" -> BackupType'EnumSnapshot
                                            | GHC.Base.otherwise -> BackupType'Other val)
