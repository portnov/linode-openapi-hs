module Linode.Types.CreditCard where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data CreditCard
instance Show CreditCard
instance Eq CreditCard
instance FromJSON CreditCard
instance ToJSON CreditCard
