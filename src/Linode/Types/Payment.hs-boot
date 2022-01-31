module Linode.Types.Payment where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Payment
instance Show Payment
instance Eq Payment
instance FromJSON Payment
instance ToJSON Payment
