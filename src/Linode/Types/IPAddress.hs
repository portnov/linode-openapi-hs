-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema IPAddress
module Linode.Types.IPAddress where

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

-- | Defines the data type for the schema IPAddress
-- 
-- An IP address that exists in Linode\'s system, either IPv4 or IPv6.
data IPAddress = IPAddress {
  -- | address: The IP address.
  iPAddressAddress :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | gateway: The default gateway for this address.
  , iPAddressGateway :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | linode_id: The ID of the Linode this address currently belongs to. For IPv4 addresses, this is by default the Linode that this address was assigned to on creation, and these addresses my be moved using the [\/networking\/ipv4\/assign](\/docs\/api\/networking\/\#ips-to-linodes-assign) endpoint. For SLAAC and link-local addresses, this value may not be changed.
  , iPAddressLinode_id :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | prefix: The number of bits set in the subnet mask.
  , iPAddressPrefix :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | public: Whether this is a public or private IP address.
  , iPAddressPublic :: (GHC.Base.Maybe GHC.Types.Bool)
  -- | rdns: The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set.
  , iPAddressRdns :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | region: The Region this IP address resides in.
  , iPAddressRegion :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | subnet_mask: The mask that separates host bits from network bits for this address.
  , iPAddressSubnet_mask :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | type: The type of address this is.
  , iPAddressType :: (GHC.Base.Maybe IPAddressType)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON IPAddress
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (iPAddressAddress obj) : (Data.Aeson..=) "gateway" (iPAddressGateway obj) : (Data.Aeson..=) "linode_id" (iPAddressLinode_id obj) : (Data.Aeson..=) "prefix" (iPAddressPrefix obj) : (Data.Aeson..=) "public" (iPAddressPublic obj) : (Data.Aeson..=) "rdns" (iPAddressRdns obj) : (Data.Aeson..=) "region" (iPAddressRegion obj) : (Data.Aeson..=) "subnet_mask" (iPAddressSubnet_mask obj) : (Data.Aeson..=) "type" (iPAddressType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (iPAddressAddress obj) GHC.Base.<> ((Data.Aeson..=) "gateway" (iPAddressGateway obj) GHC.Base.<> ((Data.Aeson..=) "linode_id" (iPAddressLinode_id obj) GHC.Base.<> ((Data.Aeson..=) "prefix" (iPAddressPrefix obj) GHC.Base.<> ((Data.Aeson..=) "public" (iPAddressPublic obj) GHC.Base.<> ((Data.Aeson..=) "rdns" (iPAddressRdns obj) GHC.Base.<> ((Data.Aeson..=) "region" (iPAddressRegion obj) GHC.Base.<> ((Data.Aeson..=) "subnet_mask" (iPAddressSubnet_mask obj) GHC.Base.<> (Data.Aeson..=) "type" (iPAddressType obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON IPAddress
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IPAddress" (\obj -> ((((((((GHC.Base.pure IPAddress GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gateway")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "linode_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prefix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "public")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rdns")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subnet_mask")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Defines the enum schema IPAddressType
-- 
-- The type of address this is.
data IPAddressType
    = IPAddressTypeEnumOther Data.Aeson.Types.Internal.Value
    | IPAddressTypeEnumTyped Data.Text.Internal.Text
    | IPAddressTypeEnumString_ipv4
    | IPAddressTypeEnumString_ipv6
    | IPAddressTypeEnumString_ipv6_pool
    | IPAddressTypeEnumString_ipv6_range
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IPAddressType
    where toJSON (IPAddressTypeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IPAddressTypeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IPAddressTypeEnumString_ipv4) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv4"
          toJSON (IPAddressTypeEnumString_ipv6) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv6"
          toJSON (IPAddressTypeEnumString_ipv6_pool) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv6/pool"
          toJSON (IPAddressTypeEnumString_ipv6_range) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv6/range"
instance Data.Aeson.FromJSON IPAddressType
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv4")
                                          then IPAddressTypeEnumString_ipv4
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv6")
                                                then IPAddressTypeEnumString_ipv6
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv6/pool")
                                                      then IPAddressTypeEnumString_ipv6_pool
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv6/range")
                                                            then IPAddressTypeEnumString_ipv6_range
                                                            else IPAddressTypeEnumOther val)