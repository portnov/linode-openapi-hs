-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema Payment
module Linode.Types.Payment where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
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
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Linode.Common

-- | Defines the data type for the schema Payment
-- 
-- Payment object response.
data Payment = Payment {
  -- | date: When the Payment was made.
  paymentDate :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | id: The unique ID of the Payment.
  , paymentId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | usd: The amount, in US dollars, of the Payment.
  , paymentUsd :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Payment
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (paymentDate obj) : (Data.Aeson..=) "id" (paymentId obj) : (Data.Aeson..=) "usd" (paymentUsd obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (paymentDate obj) GHC.Base.<> ((Data.Aeson..=) "id" (paymentId obj) GHC.Base.<> (Data.Aeson..=) "usd" (paymentUsd obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Payment
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Payment" (\obj -> ((GHC.Base.pure Payment GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usd"))