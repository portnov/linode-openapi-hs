-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema CreditCard
module Linode.Types.CreditCard where

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

-- | Defines the data type for the schema CreditCard
-- 
-- An object representing the credit card information you have on file with
-- Linode to make Payments against your Account.
data CreditCard = CreditCard {
  -- | card_number: Your credit card number. No spaces or dashes allowed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 24
  -- * Minimum length of 14
  creditCardCard_number :: Data.Text.Internal.Text
  -- | cvv: CVV (Card Verification Value) of the credit card, typically found on the back of the card.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 4
  -- * Minimum length of 3
  , creditCardCvv :: Data.Text.Internal.Text
  -- | expiry_month: A value from 1-12 representing the expiration month of your credit card.
  -- 
  --   * 1 = January
  --   * 2 = February
  --   * 3 = March
  --   * Etc.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 12.0
  -- * Minimum  of 1.0
  , creditCardExpiry_month :: GHC.Integer.Type.Integer
  -- | expiry_year: A four-digit integer representing the expiration year of
  -- your credit card.
  -- 
  -- The combination of \`expiry_month\` and \`expiry_year\`
  -- must result in a month\/year combination of the current month or in
  -- the future. An expiration date set in the past is invalid.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 4
  -- * Minimum length of 4
  , creditCardExpiry_year :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreditCard
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card_number" (creditCardCard_number obj) : (Data.Aeson..=) "cvv" (creditCardCvv obj) : (Data.Aeson..=) "expiry_month" (creditCardExpiry_month obj) : (Data.Aeson..=) "expiry_year" (creditCardExpiry_year obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card_number" (creditCardCard_number obj) GHC.Base.<> ((Data.Aeson..=) "cvv" (creditCardCvv obj) GHC.Base.<> ((Data.Aeson..=) "expiry_month" (creditCardExpiry_month obj) GHC.Base.<> (Data.Aeson..=) "expiry_year" (creditCardExpiry_year obj))))
instance Data.Aeson.Types.FromJSON.FromJSON CreditCard
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreditCard" (\obj -> (((GHC.Base.pure CreditCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "card_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cvv")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expiry_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expiry_year"))