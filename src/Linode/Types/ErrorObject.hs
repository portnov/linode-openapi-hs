-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ErrorObject
module Linode.Types.ErrorObject where

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

-- | Defines the data type for the schema ErrorObject
-- 
-- An object for describing a single error that occurred during the processing of a request.
data ErrorObject = ErrorObject {
  -- | field: The field in the request that caused this error. This may be a path, separated by periods in the case of nested fields. In some cases this may come back as \"null\" if the error is not specific to any single element of the request.
  errorObjectField :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | reason: What happened to cause this error. In most cases, this can be fixed immediately by changing the data you sent in the request, but in some cases you will be instructed to [open a Support Ticket](\/docs\/api\/support\/\#support-ticket-open) or perform some other action before you can complete the request successfully.
  , errorObjectReason :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ErrorObject
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "field" (errorObjectField obj) : (Data.Aeson..=) "reason" (errorObjectReason obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "field" (errorObjectField obj) GHC.Base.<> (Data.Aeson..=) "reason" (errorObjectReason obj))
instance Data.Aeson.Types.FromJSON.FromJSON ErrorObject
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ErrorObject" (\obj -> (GHC.Base.pure ErrorObject GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "field")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reason"))