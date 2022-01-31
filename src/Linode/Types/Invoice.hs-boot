module Linode.Types.Invoice where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Invoice
instance Show Invoice
instance Eq Invoice
instance FromJSON Invoice
instance ToJSON Invoice
