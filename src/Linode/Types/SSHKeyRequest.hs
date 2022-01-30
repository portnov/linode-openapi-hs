-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SSHKeyRequest
module Linode.Types.SSHKeyRequest where

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

-- | Defines the data type for the schema SSHKeyRequest
-- 
-- An object consisting of a user identified name as the \`label\` and the generated key as the \`ssh-key\`.
data SSHKeyRequest = SSHKeyRequest {
  -- | label: A label for the key.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 64
  -- * Minimum length of 1
  sSHKeyRequestLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | ssh_key: The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.
  , sSHKeyRequestSsh_key :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SSHKeyRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "label" (sSHKeyRequestLabel obj) : (Data.Aeson..=) "ssh_key" (sSHKeyRequestSsh_key obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "label" (sSHKeyRequestLabel obj) GHC.Base.<> (Data.Aeson..=) "ssh_key" (sSHKeyRequestSsh_key obj))
instance Data.Aeson.Types.FromJSON.FromJSON SSHKeyRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SSHKeyRequest" (\obj -> (GHC.Base.pure SSHKeyRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ssh_key"))