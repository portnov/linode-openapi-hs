-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ObjectStorageSSLResponse
module Linode.Types.ObjectStorageSSLResponse where

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

-- | Defines the data type for the schema ObjectStorageSSLResponse
-- 
-- If this Object Storage bucket has a corresponding TLS\/SSL Certificate.
data ObjectStorageSSLResponse = ObjectStorageSSLResponse {
  -- | ssl: A boolean indicating if this Bucket has a corresponding TLS\/SSL certificate that was uploaded by an Account user.
  objectStorageSSLResponseSsl :: (GHC.Base.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ObjectStorageSSLResponse
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ssl" (objectStorageSSLResponseSsl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ssl" (objectStorageSSLResponseSsl obj))
instance Data.Aeson.Types.FromJSON.FromJSON ObjectStorageSSLResponse
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ObjectStorageSSLResponse" (\obj -> GHC.Base.pure ObjectStorageSSLResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssl"))