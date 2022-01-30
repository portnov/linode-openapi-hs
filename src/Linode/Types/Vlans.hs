-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema Vlans
module Linode.Types.Vlans where

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

-- | Defines the data type for the schema Vlans
-- 
-- A virtual local area network (VLAN) associated with your Account.
data Vlans = Vlans {
  -- | created: The date this VLAN was created.
  vlansCreated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | label: The name of this VLAN.
  , vlansLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | linodes: An array of Linode IDs attached to this VLAN.
  , vlansLinodes :: (GHC.Base.Maybe ([] GHC.Integer.Type.Integer))
  -- | region: This VLAN\'s data center region.
  -- 
  -- **Note:** Currently, a VLAN can only be assigned to a Linode
  -- within the same data center region.
  , vlansRegion :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Vlans
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (vlansCreated obj) : (Data.Aeson..=) "label" (vlansLabel obj) : (Data.Aeson..=) "linodes" (vlansLinodes obj) : (Data.Aeson..=) "region" (vlansRegion obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (vlansCreated obj) GHC.Base.<> ((Data.Aeson..=) "label" (vlansLabel obj) GHC.Base.<> ((Data.Aeson..=) "linodes" (vlansLinodes obj) GHC.Base.<> (Data.Aeson..=) "region" (vlansRegion obj))))
instance Data.Aeson.Types.FromJSON.FromJSON Vlans
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Vlans" (\obj -> (((GHC.Base.pure Vlans GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "linodes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region"))