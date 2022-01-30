-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema Grant
module Linode.Types.Grant where

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

-- | Defines the data type for the schema Grant
-- 
-- Represents the level of access a restricted User has to a specific resource on the Account.
data Grant = Grant {
  -- | id: The ID of the entity this grant applies to.
  grantId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | label: The current label of the entity this grant applies to, for display purposes.
  , grantLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | permissions: The level of access this User has to this entity.  If null, this User has no access.
  , grantPermissions :: (GHC.Base.Maybe GrantPermissions)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Grant
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (grantId obj) : (Data.Aeson..=) "label" (grantLabel obj) : (Data.Aeson..=) "permissions" (grantPermissions obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (grantId obj) GHC.Base.<> ((Data.Aeson..=) "label" (grantLabel obj) GHC.Base.<> (Data.Aeson..=) "permissions" (grantPermissions obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Grant
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Grant" (\obj -> ((GHC.Base.pure Grant GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "permissions"))
-- | Defines the enum schema GrantPermissions
-- 
-- The level of access this User has to this entity.  If null, this User has no access.
data GrantPermissions
    = GrantPermissionsEnumOther Data.Aeson.Types.Internal.Value
    | GrantPermissionsEnumTyped Data.Text.Internal.Text
    | GrantPermissionsEnumString_read_only
    | GrantPermissionsEnumString_read_write
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GrantPermissions
    where toJSON (GrantPermissionsEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GrantPermissionsEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GrantPermissionsEnumString_read_only) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "read_only"
          toJSON (GrantPermissionsEnumString_read_write) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "read_write"
instance Data.Aeson.FromJSON GrantPermissions
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "read_only")
                                          then GrantPermissionsEnumString_read_only
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "read_write")
                                                then GrantPermissionsEnumString_read_write
                                                else GrantPermissionsEnumOther val)