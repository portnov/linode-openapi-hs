-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DomainRecord
module Linode.Types.DomainRecord where

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

-- | Defines the data type for the schema DomainRecord
-- 
-- A single record on a Domain.
data DomainRecord = DomainRecord {
  -- | created: When this Domain Record was created.
  domainRecordCreated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | id: This Record\'s unique ID.
  , domainRecordId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | name: The name of this Record. For requests, this property\'s actual usage and whether it is required depends
  -- on the type of record this represents:
  -- 
  -- \`A\` and \`AAAA\`: The hostname or FQDN of the Record.
  -- 
  -- \`NS\`: The subdomain, if any, to use with the Domain of the Record.
  -- 
  -- \`MX\`: The mail subdomain. For example, \`sub\` for the address \`user\@sub.example.com\` under the \`example.com\`
  -- Domain. Must be an empty string (\`\"\"\`) for a Null MX Record.
  -- 
  -- \`CNAME\`: The hostname. Must be unique. Required.
  -- 
  -- \`TXT\`: The hostname.
  -- 
  -- \`SRV\`: Unused. Use the \`service\` property to set the service name for this record.
  -- 
  -- \`CAA\`: The subdomain. Omit or enter an empty string (\`\"\"\`) to apply to the entire Domain.
  -- 
  -- \`PTR\`: See our guide on how to [Configure Your Linode for Reverse DNS
  -- (rDNS)](\/docs\/guides\/configure-your-linode-for-reverse-dns).
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  -- * Minimum length of 1
  , domainRecordName :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | port: The port this Record points to. Only valid and required for SRV record requests.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 65535.0
  -- * Minimum  of 0.0
  , domainRecordPort :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | priority: The priority of the target host for this Record. Lower values are preferred. Only valid for
  -- MX and SRV record requests. Required for SRV record requests.
  -- 
  -- Defaults to \`0\` for MX record requests. Must be \`0\` for Null MX records.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 255.0
  -- * Minimum  of 0.0
  , domainRecordPriority :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | protocol: The protocol this Record\'s service communicates with. An underscore (\`_\`) is prepended automatically to the submitted value for this property. Only valid for SRV record requests.
  , domainRecordProtocol :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | service: The name of the service. An underscore (\`_\`) is prepended and a period (\`.\`) is appended automatically to the submitted value for this property. Only valid and required for SRV record requests.
  , domainRecordService :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | tag: The tag portion of a CAA record. Only valid and required for CAA record requests.
  , domainRecordTag :: (GHC.Base.Maybe DomainRecordTag)
  -- | target: The target for this Record. For requests, this property\'s actual usage and whether it is required depends
  -- on the type of record this represents:
  -- 
  -- \`A\` and \`AAAA\`: The IP address. Use \`[remote_addr]\` to submit the IPv4 address of the request. Required.
  -- 
  -- \`NS\`: The name server. Must be a valid domain. Required.
  -- 
  -- \`MX\`: The mail server. Must be a valid domain unless creating a Null MX Record. To create a
  -- [Null MX Record](https:\/\/datatracker.ietf.org\/doc\/html\/rfc7505), first
  -- [remove](\/docs\/api\/domains\/\#domain-record-delete) any additional MX records, create an MX record with empty strings
  -- (\`\"\"\`) for the \`target\` and \`name\`. If a Domain has a Null MX record, new MX records cannot be created. Required.
  -- 
  -- \`CNAME\`: The alias. Must be a valid domain. Required.
  -- 
  -- \`TXT\`: The value. Required.
  -- 
  -- \`SRV\`: The target domain or subdomain. If a subdomain is entered, it is automatically used with the Domain.
  -- To configure for a different domain, enter a valid FQDN. For example, the value \`www\` with a Domain for
  -- \`example.com\` results in a target set to \`www.example.com\`, whereas the value \`sample.com\` results in a
  -- target set to \`sample.com\`. Required.
  -- 
  -- \`CAA\`: The value. For \`issue\` or \`issuewild\` tags, the domain of your certificate issuer. For the \`iodef\`
  -- tag, a contact or submission URL (http or mailto).
  -- 
  -- \`PTR\`: See our guide on how to [Configure Your Linode for Reverse DNS
  -- (rDNS)](\/docs\/guides\/configure-your-linode-for-reverse-dns).
  -- 
  -- With the exception of A, AAAA, and CAA records, this field accepts a trailing period.
  , domainRecordTarget :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | ttl_sec: \"Time to Live\" - the amount of time in seconds that this Domain\'s records may be cached by resolvers or other domain servers. Valid values are 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  , domainRecordTtl_sec :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | type: The type of Record this is in the DNS system. For example, A records associate a domain name with an IPv4 address, and AAAA records associate a domain name with an IPv6 address. For more information, see our guide on [DNS Records](\/docs\/guides\/dns-records-an-introduction).
  , domainRecordType :: (GHC.Base.Maybe DomainRecordType)
  -- | updated: When this Domain Record was last updated.
  , domainRecordUpdated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | weight: The relative weight of this Record used in the case of identical priority. Higher values are preferred. Only valid and required for SRV record requests.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 65535.0
  -- * Minimum  of 0.0
  , domainRecordWeight :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DomainRecord
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (domainRecordCreated obj) : (Data.Aeson..=) "id" (domainRecordId obj) : (Data.Aeson..=) "name" (domainRecordName obj) : (Data.Aeson..=) "port" (domainRecordPort obj) : (Data.Aeson..=) "priority" (domainRecordPriority obj) : (Data.Aeson..=) "protocol" (domainRecordProtocol obj) : (Data.Aeson..=) "service" (domainRecordService obj) : (Data.Aeson..=) "tag" (domainRecordTag obj) : (Data.Aeson..=) "target" (domainRecordTarget obj) : (Data.Aeson..=) "ttl_sec" (domainRecordTtl_sec obj) : (Data.Aeson..=) "type" (domainRecordType obj) : (Data.Aeson..=) "updated" (domainRecordUpdated obj) : (Data.Aeson..=) "weight" (domainRecordWeight obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (domainRecordCreated obj) GHC.Base.<> ((Data.Aeson..=) "id" (domainRecordId obj) GHC.Base.<> ((Data.Aeson..=) "name" (domainRecordName obj) GHC.Base.<> ((Data.Aeson..=) "port" (domainRecordPort obj) GHC.Base.<> ((Data.Aeson..=) "priority" (domainRecordPriority obj) GHC.Base.<> ((Data.Aeson..=) "protocol" (domainRecordProtocol obj) GHC.Base.<> ((Data.Aeson..=) "service" (domainRecordService obj) GHC.Base.<> ((Data.Aeson..=) "tag" (domainRecordTag obj) GHC.Base.<> ((Data.Aeson..=) "target" (domainRecordTarget obj) GHC.Base.<> ((Data.Aeson..=) "ttl_sec" (domainRecordTtl_sec obj) GHC.Base.<> ((Data.Aeson..=) "type" (domainRecordType obj) GHC.Base.<> ((Data.Aeson..=) "updated" (domainRecordUpdated obj) GHC.Base.<> (Data.Aeson..=) "weight" (domainRecordWeight obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON DomainRecord
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DomainRecord" (\obj -> ((((((((((((GHC.Base.pure DomainRecord GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "port")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "priority")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "protocol")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tag")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "target")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ttl_sec")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "weight"))
-- | Defines the enum schema DomainRecordTag
-- 
-- The tag portion of a CAA record. Only valid and required for CAA record requests.
data DomainRecordTag
    = DomainRecordTagEnumOther Data.Aeson.Types.Internal.Value
    | DomainRecordTagEnumTyped Data.Text.Internal.Text
    | DomainRecordTagEnumString_iodef
    | DomainRecordTagEnumString_issue
    | DomainRecordTagEnumString_issuewild
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DomainRecordTag
    where toJSON (DomainRecordTagEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DomainRecordTagEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DomainRecordTagEnumString_iodef) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "iodef"
          toJSON (DomainRecordTagEnumString_issue) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "issue"
          toJSON (DomainRecordTagEnumString_issuewild) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "issuewild"
instance Data.Aeson.FromJSON DomainRecordTag
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "iodef")
                                          then DomainRecordTagEnumString_iodef
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "issue")
                                                then DomainRecordTagEnumString_issue
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "issuewild")
                                                      then DomainRecordTagEnumString_issuewild
                                                      else DomainRecordTagEnumOther val)
-- | Defines the enum schema DomainRecordType
-- 
-- The type of Record this is in the DNS system. For example, A records associate a domain name with an IPv4 address, and AAAA records associate a domain name with an IPv6 address. For more information, see our guide on [DNS Records](\/docs\/guides\/dns-records-an-introduction).
data DomainRecordType
    = DomainRecordTypeEnumOther Data.Aeson.Types.Internal.Value
    | DomainRecordTypeEnumTyped Data.Text.Internal.Text
    | DomainRecordTypeEnumString_A
    | DomainRecordTypeEnumString_AAAA
    | DomainRecordTypeEnumString_CAA
    | DomainRecordTypeEnumString_CNAME
    | DomainRecordTypeEnumString_MX
    | DomainRecordTypeEnumString_NS
    | DomainRecordTypeEnumString_PTR
    | DomainRecordTypeEnumString_SRV
    | DomainRecordTypeEnumString_TXT
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DomainRecordType
    where toJSON (DomainRecordTypeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DomainRecordTypeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DomainRecordTypeEnumString_A) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "A"
          toJSON (DomainRecordTypeEnumString_AAAA) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "AAAA"
          toJSON (DomainRecordTypeEnumString_CAA) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "CAA"
          toJSON (DomainRecordTypeEnumString_CNAME) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "CNAME"
          toJSON (DomainRecordTypeEnumString_MX) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "MX"
          toJSON (DomainRecordTypeEnumString_NS) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "NS"
          toJSON (DomainRecordTypeEnumString_PTR) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "PTR"
          toJSON (DomainRecordTypeEnumString_SRV) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "SRV"
          toJSON (DomainRecordTypeEnumString_TXT) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "TXT"
instance Data.Aeson.FromJSON DomainRecordType
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "A")
                                          then DomainRecordTypeEnumString_A
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "AAAA")
                                                then DomainRecordTypeEnumString_AAAA
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "CAA")
                                                      then DomainRecordTypeEnumString_CAA
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "CNAME")
                                                            then DomainRecordTypeEnumString_CNAME
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "MX")
                                                                  then DomainRecordTypeEnumString_MX
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "NS")
                                                                        then DomainRecordTypeEnumString_NS
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "PTR")
                                                                              then DomainRecordTypeEnumString_PTR
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "SRV")
                                                                                    then DomainRecordTypeEnumString_SRV
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "TXT")
                                                                                          then DomainRecordTypeEnumString_TXT
                                                                                          else DomainRecordTypeEnumOther val)