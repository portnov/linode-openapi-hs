-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema Invoice
module Linode.Types.Invoice where

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

-- | Defines the data type for the schema Invoice
-- 
-- Account Invoice object
data Invoice = Invoice {
  -- | date: When this Invoice was generated.
  invoiceDate :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | id: The Invoice\'s unique ID.
  , invoiceId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | label: The Invoice\'s display label.
  , invoiceLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | subtotal: The amount of the Invoice before taxes in US Dollars.
  , invoiceSubtotal :: (GHC.Base.Maybe GHC.Types.Double)
  -- | tax: The amount of tax levied on the Invoice in US Dollars.
  , invoiceTax :: (GHC.Base.Maybe GHC.Types.Double)
  -- | total: The amount of the Invoice after taxes in US Dollars.
  , invoiceTotal :: (GHC.Base.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Invoice
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (invoiceDate obj) : (Data.Aeson..=) "id" (invoiceId obj) : (Data.Aeson..=) "label" (invoiceLabel obj) : (Data.Aeson..=) "subtotal" (invoiceSubtotal obj) : (Data.Aeson..=) "tax" (invoiceTax obj) : (Data.Aeson..=) "total" (invoiceTotal obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (invoiceDate obj) GHC.Base.<> ((Data.Aeson..=) "id" (invoiceId obj) GHC.Base.<> ((Data.Aeson..=) "label" (invoiceLabel obj) GHC.Base.<> ((Data.Aeson..=) "subtotal" (invoiceSubtotal obj) GHC.Base.<> ((Data.Aeson..=) "tax" (invoiceTax obj) GHC.Base.<> (Data.Aeson..=) "total" (invoiceTotal obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON Invoice
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Invoice" (\obj -> (((((GHC.Base.pure Invoice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subtotal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "total"))