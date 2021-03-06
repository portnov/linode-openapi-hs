-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation executePayPalPayment
module Linode.Operations.ExecutePayPalPayment where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified Linode.Common
import Linode.Types

-- | > POST /account/payments/paypal/execute
-- 
-- Given a PaymentID and PayerID - as generated by PayPal during the
-- transaction authorization process - this endpoint executes the Payment
-- to capture the funds and credit your Linode Account.
-- 
-- **Note**: This endpoint is deprecated and may be removed in a future release. PayPal can now be
-- designated as a Payment Method for automated or manual payments using
-- [Cloud Manager](\/docs\/guides\/manage-billing-in-cloud-manager\/\#adding-a-new-payment-method).
executePayPalPayment :: forall m . Linode.Common.MonadHTTP m => PayPalExecute -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response ExecutePayPalPaymentResponse) -- ^ Monadic computation which returns the result of the operation
executePayPalPayment body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ExecutePayPalPaymentResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ExecutePayPalPaymentResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Data.Aeson.Types.Internal.Object)
                                                                                                                                                                           | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 202) (Network.HTTP.Client.Types.responseStatus response) -> ExecutePayPalPaymentResponse202 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               ExecutePayPalPaymentResponseBody202)
                                                                                                                                                                           | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 299) (Network.HTTP.Client.Types.responseStatus response) -> ExecutePayPalPaymentResponse299 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               ExecutePayPalPaymentResponseBody299)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ExecutePayPalPaymentResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 ExecutePayPalPaymentResponseBodyDefault)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/account/payments/paypal/execute") GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'executePayPalPayment'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ExecutePayPalPaymentResponseError' is used.
data ExecutePayPalPaymentResponse =
   ExecutePayPalPaymentResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | ExecutePayPalPaymentResponse200 Data.Aeson.Types.Internal.Object -- ^ PayPal Payment executed.
  | ExecutePayPalPaymentResponse202 ExecutePayPalPaymentResponseBody202 -- ^ Accepted with warning.  A warnings array is included with the standard 200 response body. 
  | ExecutePayPalPaymentResponse299 ExecutePayPalPaymentResponseBody299 -- ^ Request successful. This endpoint is deprecated and may be removed in a future release.  A warnings array is included with the standard 200 response body. 
  | ExecutePayPalPaymentResponseDefault ExecutePayPalPaymentResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.AcceptedResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data ExecutePayPalPaymentResponseBody202 = ExecutePayPalPaymentResponseBody202 {
  -- | warnings
  executePayPalPaymentResponseBody202Warnings :: (GHC.Maybe.Maybe ([WarningObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ExecutePayPalPaymentResponseBody202
    where toJSON obj = Data.Aeson.Types.Internal.object ("warnings" Data.Aeson.Types.ToJSON..= executePayPalPaymentResponseBody202Warnings obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("warnings" Data.Aeson.Types.ToJSON..= executePayPalPaymentResponseBody202Warnings obj)
instance Data.Aeson.Types.FromJSON.FromJSON ExecutePayPalPaymentResponseBody202
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ExecutePayPalPaymentResponseBody202" (\obj -> GHC.Base.pure ExecutePayPalPaymentResponseBody202 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "warnings"))
-- | Create a new 'ExecutePayPalPaymentResponseBody202' with all required fields.
mkExecutePayPalPaymentResponseBody202 :: ExecutePayPalPaymentResponseBody202
mkExecutePayPalPaymentResponseBody202 = ExecutePayPalPaymentResponseBody202{executePayPalPaymentResponseBody202Warnings = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.DeprecatedResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data ExecutePayPalPaymentResponseBody299 = ExecutePayPalPaymentResponseBody299 {
  -- | warnings
  executePayPalPaymentResponseBody299Warnings :: (GHC.Maybe.Maybe ([WarningObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ExecutePayPalPaymentResponseBody299
    where toJSON obj = Data.Aeson.Types.Internal.object ("warnings" Data.Aeson.Types.ToJSON..= executePayPalPaymentResponseBody299Warnings obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("warnings" Data.Aeson.Types.ToJSON..= executePayPalPaymentResponseBody299Warnings obj)
instance Data.Aeson.Types.FromJSON.FromJSON ExecutePayPalPaymentResponseBody299
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ExecutePayPalPaymentResponseBody299" (\obj -> GHC.Base.pure ExecutePayPalPaymentResponseBody299 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "warnings"))
-- | Create a new 'ExecutePayPalPaymentResponseBody299' with all required fields.
mkExecutePayPalPaymentResponseBody299 :: ExecutePayPalPaymentResponseBody299
mkExecutePayPalPaymentResponseBody299 = ExecutePayPalPaymentResponseBody299{executePayPalPaymentResponseBody299Warnings = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data ExecutePayPalPaymentResponseBodyDefault = ExecutePayPalPaymentResponseBodyDefault {
  -- | errors
  executePayPalPaymentResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ExecutePayPalPaymentResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= executePayPalPaymentResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= executePayPalPaymentResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON ExecutePayPalPaymentResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ExecutePayPalPaymentResponseBodyDefault" (\obj -> GHC.Base.pure ExecutePayPalPaymentResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'ExecutePayPalPaymentResponseBodyDefault' with all required fields.
mkExecutePayPalPaymentResponseBodyDefault :: ExecutePayPalPaymentResponseBodyDefault
mkExecutePayPalPaymentResponseBodyDefault = ExecutePayPalPaymentResponseBodyDefault{executePayPalPaymentResponseBodyDefaultErrors = GHC.Maybe.Nothing}
