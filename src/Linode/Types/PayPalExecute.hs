-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PayPalExecute
module Linode.Types.PayPalExecute where

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

-- | Defines the object schema located at @components.schemas.PayPalExecute@ in the specification.
-- 
-- An object representing an execution of Payment to PayPal to capture the funds and credit your Linode Account.
data PayPalExecute = PayPalExecute {
  -- | payer_id: The PayerID returned by PayPal during the transaction authorization process.
  payPalExecutePayerId :: Data.Text.Internal.Text
  -- | payment_id: The PaymentID returned from [POST \/account\/payments\/paypal](\/docs\/api\/account\/\#paypal-payment-stage) that has been approved with PayPal.
  , payPalExecutePaymentId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PayPalExecute
    where toJSON obj = Data.Aeson.Types.Internal.object ("payer_id" Data.Aeson.Types.ToJSON..= payPalExecutePayerId obj : "payment_id" Data.Aeson.Types.ToJSON..= payPalExecutePaymentId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("payer_id" Data.Aeson.Types.ToJSON..= payPalExecutePayerId obj) GHC.Base.<> ("payment_id" Data.Aeson.Types.ToJSON..= payPalExecutePaymentId obj))
instance Data.Aeson.Types.FromJSON.FromJSON PayPalExecute
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PayPalExecute" (\obj -> (GHC.Base.pure PayPalExecute GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payer_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payment_id"))
-- | Create a new 'PayPalExecute' with all required fields.
mkPayPalExecute :: Data.Text.Internal.Text -- ^ 'payPalExecutePayerId'
  -> Data.Text.Internal.Text -- ^ 'payPalExecutePaymentId'
  -> PayPalExecute
mkPayPalExecute payPalExecutePayerId payPalExecutePaymentId = PayPalExecute{payPalExecutePayerId = payPalExecutePayerId,
                                                                            payPalExecutePaymentId = payPalExecutePaymentId}
