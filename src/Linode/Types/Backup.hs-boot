module Linode.Types.Backup where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Backup
instance Show Backup
instance Eq Backup
instance FromJSON Backup
instance ToJSON Backup
data BackupDisks'
instance Show BackupDisks'
instance Eq BackupDisks'
instance FromJSON BackupDisks'
instance ToJSON BackupDisks'
data BackupStatus'
instance Show BackupStatus'
instance Eq BackupStatus'
instance FromJSON BackupStatus'
instance ToJSON BackupStatus'
data BackupType'
instance Show BackupType'
instance Eq BackupType'
instance FromJSON BackupType'
instance ToJSON BackupType'
