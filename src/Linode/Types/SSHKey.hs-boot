module Linode.Types.SSHKey where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data SSHKey
instance Show SSHKey
instance Eq SSHKey
instance FromJSON SSHKey
instance ToJSON SSHKey
