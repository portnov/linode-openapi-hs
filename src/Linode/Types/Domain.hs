-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema Domain
module Linode.Types.Domain where

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

-- | Defines the data type for the schema Domain
-- 
-- A domain zonefile in our DNS system.  You must own the domain name and tell your registrar to use Linode\'s nameservers in order for a domain in our system to be treated as authoritative.
data Domain = Domain {
  -- | axfr_ips: The list of IPs that may perform a zone transfer for this Domain. This is potentially dangerous, and should be set to an empty list unless you intend to use it.
  domainAxfr_ips :: (GHC.Base.Maybe ([] Data.Text.Internal.Text))
  -- | description: A description for this Domain. This is for display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 255
  -- * Minimum length of 1
  , domainDescription :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | domain: The domain this Domain represents. Domain labels cannot be longer than 63 characters and must conform to [RFC1035](https:\/\/tools.ietf.org\/html\/rfc1035). Domains must be unique on Linode\'s platform, including across different Linode accounts; there cannot be two Domains representing the same domain.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 255
  -- * Minimum length of 1
  -- * Must match pattern \'\\A(\\*\\.)?([a-zA-Z0-9-_]{1,63}\\.)+([a-zA-Z]{2,3}\\.)?([a-zA-Z]{2,16}|xn--[a-zA-Z0-9]+)\\Z\'
  , domainDomain :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | expire_sec: The amount of time in seconds that may pass before this Domain is no longer
  -- authoritative.
  -- 
  -- * Valid values are
  -- 0, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200.
  -- 
  -- * Any other value is rounded up to the nearest valid value.
  -- 
  -- * A value of 0 is equivalent to the default value of 1209600.
  , domainExpire_sec :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | group: The group this Domain belongs to.  This is for display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 50
  -- * Minimum length of 1
  , domainGroup :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | id: This Domain\'s unique ID
  , domainId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | master_ips: The IP addresses representing the master DNS for this Domain. At least one value is required for \`type\` slave Domains.
  , domainMaster_ips :: (GHC.Base.Maybe ([] Data.Text.Internal.Text))
  -- | refresh_sec: The amount of time in seconds before this Domain should be refreshed.
  -- 
  -- * Valid values are
  -- 0, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200.
  -- 
  -- * Any other value is rounded up to the nearest valid value.
  -- 
  -- * A value of 0 is equivalent to the default value of 14400.
  , domainRefresh_sec :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | retry_sec: The interval, in seconds, at which a failed refresh should be retried.
  -- 
  -- * Valid values are
  -- 0, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200.
  -- 
  -- * Any other value is rounded up to the nearest valid value.
  -- 
  -- * A value of 0 is equivalent to the default value of 14400.
  , domainRetry_sec :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | soa_email: Start of Authority email address. This is required for \`type\` master Domains.
  , domainSoa_email :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | status: Used to control whether this Domain is currently being rendered.
  , domainStatus :: (GHC.Base.Maybe DomainStatus)
  -- | tags: An array of tags applied to this object.  Tags are for organizational purposes only.
  , domainTags :: (GHC.Base.Maybe ([] Data.Text.Internal.Text))
  -- | ttl_sec: \"Time to Live\" - the amount of time in seconds that this Domain\'s records may be cached by resolvers or other domain servers.
  -- * Valid values are 0, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200.
  -- * Any other value is rounded up to the nearest valid value.
  -- * A value of 0 is equivalent to the default value of 86400.
  , domainTtl_sec :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | type: Whether this Domain represents the authoritative source of information for the domain it describes (\"master\"), or whether it is a read-only copy of a master (\"slave\").
  , domainType :: (GHC.Base.Maybe DomainType)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Domain
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "axfr_ips" (domainAxfr_ips obj) : (Data.Aeson..=) "description" (domainDescription obj) : (Data.Aeson..=) "domain" (domainDomain obj) : (Data.Aeson..=) "expire_sec" (domainExpire_sec obj) : (Data.Aeson..=) "group" (domainGroup obj) : (Data.Aeson..=) "id" (domainId obj) : (Data.Aeson..=) "master_ips" (domainMaster_ips obj) : (Data.Aeson..=) "refresh_sec" (domainRefresh_sec obj) : (Data.Aeson..=) "retry_sec" (domainRetry_sec obj) : (Data.Aeson..=) "soa_email" (domainSoa_email obj) : (Data.Aeson..=) "status" (domainStatus obj) : (Data.Aeson..=) "tags" (domainTags obj) : (Data.Aeson..=) "ttl_sec" (domainTtl_sec obj) : (Data.Aeson..=) "type" (domainType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "axfr_ips" (domainAxfr_ips obj) GHC.Base.<> ((Data.Aeson..=) "description" (domainDescription obj) GHC.Base.<> ((Data.Aeson..=) "domain" (domainDomain obj) GHC.Base.<> ((Data.Aeson..=) "expire_sec" (domainExpire_sec obj) GHC.Base.<> ((Data.Aeson..=) "group" (domainGroup obj) GHC.Base.<> ((Data.Aeson..=) "id" (domainId obj) GHC.Base.<> ((Data.Aeson..=) "master_ips" (domainMaster_ips obj) GHC.Base.<> ((Data.Aeson..=) "refresh_sec" (domainRefresh_sec obj) GHC.Base.<> ((Data.Aeson..=) "retry_sec" (domainRetry_sec obj) GHC.Base.<> ((Data.Aeson..=) "soa_email" (domainSoa_email obj) GHC.Base.<> ((Data.Aeson..=) "status" (domainStatus obj) GHC.Base.<> ((Data.Aeson..=) "tags" (domainTags obj) GHC.Base.<> ((Data.Aeson..=) "ttl_sec" (domainTtl_sec obj) GHC.Base.<> (Data.Aeson..=) "type" (domainType obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Domain
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Domain" (\obj -> (((((((((((((GHC.Base.pure Domain GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "axfr_ips")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "domain")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expire_sec")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "master_ips")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refresh_sec")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "retry_sec")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "soa_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tags")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ttl_sec")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Defines the enum schema DomainStatus
-- 
-- Used to control whether this Domain is currently being rendered.
data DomainStatus
    = DomainStatusEnumOther Data.Aeson.Types.Internal.Value
    | DomainStatusEnumTyped Data.Text.Internal.Text
    | DomainStatusEnumString_active
    | DomainStatusEnumString_disabled
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DomainStatus
    where toJSON (DomainStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DomainStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DomainStatusEnumString_active) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active"
          toJSON (DomainStatusEnumString_disabled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "disabled"
instance Data.Aeson.FromJSON DomainStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active")
                                          then DomainStatusEnumString_active
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "disabled")
                                                then DomainStatusEnumString_disabled
                                                else DomainStatusEnumOther val)
-- | Defines the enum schema DomainType
-- 
-- Whether this Domain represents the authoritative source of information for the domain it describes (\"master\"), or whether it is a read-only copy of a master (\"slave\").
data DomainType
    = DomainTypeEnumOther Data.Aeson.Types.Internal.Value
    | DomainTypeEnumTyped Data.Text.Internal.Text
    | DomainTypeEnumString_master
    | DomainTypeEnumString_slave
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DomainType
    where toJSON (DomainTypeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DomainTypeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DomainTypeEnumString_master) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "master"
          toJSON (DomainTypeEnumString_slave) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "slave"
instance Data.Aeson.FromJSON DomainType
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "master")
                                          then DomainTypeEnumString_master
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "slave")
                                                then DomainTypeEnumString_slave
                                                else DomainTypeEnumOther val)