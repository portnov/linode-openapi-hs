module Linode.Types.ErrorObject where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data ErrorObject
instance Show ErrorObject
instance Eq ErrorObject
instance FromJSON ErrorObject
instance ToJSON ErrorObject
