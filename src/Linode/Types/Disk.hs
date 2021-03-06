-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Disk
module Linode.Types.Disk where

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

-- | Defines the object schema located at @components.schemas.Disk@ in the specification.
-- 
-- 
data Disk = Disk {
  -- | created: When this Disk was created.
  diskCreated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | filesystem: The Disk filesystem can be one of:
  -- 
  --   * raw - No filesystem, just a raw binary stream.
  --   * swap - Linux swap area.
  --   * ext3 - The ext3 journaling filesystem for Linux.
  --   * ext4 - The ext4 journaling filesystem for Linux.
  --   * initrd - initrd (uncompressed initrd, ext2, max 32 MB).
  , diskFilesystem :: (GHC.Maybe.Maybe DiskFilesystem')
  -- | id: This Disk\'s ID which must be provided for all operations impacting this Disk.
  , diskId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | label: The Disk\'s label is for display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 48
  -- * Minimum length of 1
  , diskLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | size: The size of the Disk in MB.
  , diskSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | status: A brief description of this Disk\'s current state. This field may change without direct action from you, as a result of operations performed to the Disk or the Linode containing the Disk.
  , diskStatus :: (GHC.Maybe.Maybe DiskStatus')
  -- | updated: When this Disk was last updated.
  , diskUpdated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Disk
    where toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= diskCreated obj : "filesystem" Data.Aeson.Types.ToJSON..= diskFilesystem obj : "id" Data.Aeson.Types.ToJSON..= diskId obj : "label" Data.Aeson.Types.ToJSON..= diskLabel obj : "size" Data.Aeson.Types.ToJSON..= diskSize obj : "status" Data.Aeson.Types.ToJSON..= diskStatus obj : "updated" Data.Aeson.Types.ToJSON..= diskUpdated obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= diskCreated obj) GHC.Base.<> (("filesystem" Data.Aeson.Types.ToJSON..= diskFilesystem obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= diskId obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= diskLabel obj) GHC.Base.<> (("size" Data.Aeson.Types.ToJSON..= diskSize obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= diskStatus obj) GHC.Base.<> ("updated" Data.Aeson.Types.ToJSON..= diskUpdated obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON Disk
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Disk" (\obj -> ((((((GHC.Base.pure Disk GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "filesystem")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated"))
-- | Create a new 'Disk' with all required fields.
mkDisk :: Disk
mkDisk = Disk{diskCreated = GHC.Maybe.Nothing,
              diskFilesystem = GHC.Maybe.Nothing,
              diskId = GHC.Maybe.Nothing,
              diskLabel = GHC.Maybe.Nothing,
              diskSize = GHC.Maybe.Nothing,
              diskStatus = GHC.Maybe.Nothing,
              diskUpdated = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.Disk.properties.filesystem@ in the specification.
-- 
-- The Disk filesystem can be one of:
-- 
--   * raw - No filesystem, just a raw binary stream.
--   * swap - Linux swap area.
--   * ext3 - The ext3 journaling filesystem for Linux.
--   * ext4 - The ext4 journaling filesystem for Linux.
--   * initrd - initrd (uncompressed initrd, ext2, max 32 MB).
data DiskFilesystem' =
   DiskFilesystem'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | DiskFilesystem'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | DiskFilesystem'EnumRaw -- ^ Represents the JSON value @"raw"@
  | DiskFilesystem'EnumSwap -- ^ Represents the JSON value @"swap"@
  | DiskFilesystem'EnumExt3 -- ^ Represents the JSON value @"ext3"@
  | DiskFilesystem'EnumExt4 -- ^ Represents the JSON value @"ext4"@
  | DiskFilesystem'EnumInitrd -- ^ Represents the JSON value @"initrd"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DiskFilesystem'
    where toJSON (DiskFilesystem'Other val) = val
          toJSON (DiskFilesystem'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (DiskFilesystem'EnumRaw) = "raw"
          toJSON (DiskFilesystem'EnumSwap) = "swap"
          toJSON (DiskFilesystem'EnumExt3) = "ext3"
          toJSON (DiskFilesystem'EnumExt4) = "ext4"
          toJSON (DiskFilesystem'EnumInitrd) = "initrd"
instance Data.Aeson.Types.FromJSON.FromJSON DiskFilesystem'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "raw" -> DiskFilesystem'EnumRaw
                                            | val GHC.Classes.== "swap" -> DiskFilesystem'EnumSwap
                                            | val GHC.Classes.== "ext3" -> DiskFilesystem'EnumExt3
                                            | val GHC.Classes.== "ext4" -> DiskFilesystem'EnumExt4
                                            | val GHC.Classes.== "initrd" -> DiskFilesystem'EnumInitrd
                                            | GHC.Base.otherwise -> DiskFilesystem'Other val)
-- | Defines the enum schema located at @components.schemas.Disk.properties.status@ in the specification.
-- 
-- A brief description of this Disk\'s current state. This field may change without direct action from you, as a result of operations performed to the Disk or the Linode containing the Disk.
data DiskStatus' =
   DiskStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | DiskStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | DiskStatus'EnumReady -- ^ Represents the JSON value @"ready"@
  | DiskStatus'EnumNotReady -- ^ Represents the JSON value @"not ready"@
  | DiskStatus'EnumDeleting -- ^ Represents the JSON value @"deleting"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DiskStatus'
    where toJSON (DiskStatus'Other val) = val
          toJSON (DiskStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (DiskStatus'EnumReady) = "ready"
          toJSON (DiskStatus'EnumNotReady) = "not ready"
          toJSON (DiskStatus'EnumDeleting) = "deleting"
instance Data.Aeson.Types.FromJSON.FromJSON DiskStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "ready" -> DiskStatus'EnumReady
                                            | val GHC.Classes.== "not ready" -> DiskStatus'EnumNotReady
                                            | val GHC.Classes.== "deleting" -> DiskStatus'EnumDeleting
                                            | GHC.Base.otherwise -> DiskStatus'Other val)
