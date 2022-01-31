module Linode.Types.Disk where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Disk
instance Show Disk
instance Eq Disk
instance FromJSON Disk
instance ToJSON Disk
data DiskFilesystem'
instance Show DiskFilesystem'
instance Eq DiskFilesystem'
instance FromJSON DiskFilesystem'
instance ToJSON DiskFilesystem'
data DiskStatus'
instance Show DiskStatus'
instance Eq DiskStatus'
instance FromJSON DiskStatus'
instance ToJSON DiskStatus'
