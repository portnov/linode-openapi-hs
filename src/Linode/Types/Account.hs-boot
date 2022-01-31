module Linode.Types.Account where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Account
instance Show Account
instance Eq Account
instance FromJSON Account
instance ToJSON Account
data AccountCreditCard'
instance Show AccountCreditCard'
instance Eq AccountCreditCard'
instance FromJSON AccountCreditCard'
instance ToJSON AccountCreditCard'
