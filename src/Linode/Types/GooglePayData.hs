-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema GooglePayData
module Linode.Types.GooglePayData where

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

-- | Defines the data type for the schema GooglePayData
-- 
-- Google Pay information.
data GooglePayData = GooglePayData {
  -- | card_type: The type of credit card.
  googlePayDataCard_type :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | expiry: The expiration month and year of the credit card.
  , googlePayDataExpiry :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | last_four: The last four digits of the credit card number.
  , googlePayDataLast_four :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GooglePayData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card_type" (googlePayDataCard_type obj) : (Data.Aeson..=) "expiry" (googlePayDataExpiry obj) : (Data.Aeson..=) "last_four" (googlePayDataLast_four obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card_type" (googlePayDataCard_type obj) GHC.Base.<> ((Data.Aeson..=) "expiry" (googlePayDataExpiry obj) GHC.Base.<> (Data.Aeson..=) "last_four" (googlePayDataLast_four obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GooglePayData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GooglePayData" (\obj -> ((GHC.Base.pure GooglePayData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expiry")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_four"))