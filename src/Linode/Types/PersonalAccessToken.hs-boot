module Linode.Types.PersonalAccessToken where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data PersonalAccessToken
instance Show PersonalAccessToken
instance Eq PersonalAccessToken
instance FromJSON PersonalAccessToken
instance ToJSON PersonalAccessToken
