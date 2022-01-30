-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema LinodeType
module Linode.Types.LinodeType where

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

-- | Defines the data type for the schema LinodeType
-- 
-- Returns collection of Linode types, including pricing and specifications for each type. These are used when [creating](\/docs\/api\/linode-instances\/\#linode-create) or [resizing](\/docs\/api\/linode-instances\/\#linode-resize) Linodes.
data LinodeType = LinodeType {
  -- | addons: A list of optional add-on services for Linodes and their associated costs.
  linodeTypeAddons :: (GHC.Base.Maybe LinodeTypeAddons)
  -- | class: The class of the Linode Type. We currently offer five classes of Linodes:
  -- 
  --   * nanode - Nanode instances are good for low-duty workloads,
  --     where performance isn\'t critical. **Note:** As of June 16th, 2020, Nanodes became
  --     1 GB Linodes in the Cloud Manager, however, the API, the CLI, and billing will
  --     continue to refer to these instances as Nanodes.
  --   * standard - Standard Shared instances are good for medium-duty workloads and
  --     are a good mix of performance, resources, and price. **Note:** As of June 16th, 2020,
  --     Standard Linodes in the Cloud Manager became Shared Linodes, however, the API, the CLI, and
  --     billing will continue to refer to these instances as Standard Linodes.
  --   * dedicated - Dedicated CPU instances are good for full-duty workloads
  --     where consistent performance is important.
  --   * gpu - Linodes with dedicated NVIDIA Quadro &reg; RTX 6000 GPUs accelerate highly
  --     specialized applications such as machine learning, AI, and video transcoding.
  --   * highmem - High Memory instances favor RAM over other resources, and can be
  --     good for memory hungry use cases like caching and in-memory databases.
  --     All High Memory plans contain dedicated CPU cores.
  , linodeTypeClass :: (GHC.Base.Maybe LinodeTypeClass)
  -- | disk: The Disk size, in MB, of the Linode Type.
  , linodeTypeDisk :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | gpus: The number of GPUs this Linode Type offers.
  , linodeTypeGpus :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | id: The ID representing the Linode Type.
  , linodeTypeId :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | label: The Linode Type\'s label is for display purposes only.
  , linodeTypeLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | memory: Amount of RAM included in this Linode Type.
  , linodeTypeMemory :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | network_out: The Mbits outbound bandwidth allocation.
  , linodeTypeNetwork_out :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | price: Cost in US dollars, broken down into hourly and monthly charges.
  , linodeTypePrice :: (GHC.Base.Maybe LinodeTypePrice)
  -- | successor: The Linode Type that a [mutate](\/docs\/api\/linode-instances\/\#linode-upgrade) will upgrade to for a Linode of this type.  If \"null\", a Linode of this type may not mutate.
  , linodeTypeSuccessor :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | transfer: The monthly outbound transfer amount, in MB.
  , linodeTypeTransfer :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | vcpus: The number of VCPU cores this Linode Type offers.
  , linodeTypeVcpus :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON LinodeType
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "addons" (linodeTypeAddons obj) : (Data.Aeson..=) "class" (linodeTypeClass obj) : (Data.Aeson..=) "disk" (linodeTypeDisk obj) : (Data.Aeson..=) "gpus" (linodeTypeGpus obj) : (Data.Aeson..=) "id" (linodeTypeId obj) : (Data.Aeson..=) "label" (linodeTypeLabel obj) : (Data.Aeson..=) "memory" (linodeTypeMemory obj) : (Data.Aeson..=) "network_out" (linodeTypeNetwork_out obj) : (Data.Aeson..=) "price" (linodeTypePrice obj) : (Data.Aeson..=) "successor" (linodeTypeSuccessor obj) : (Data.Aeson..=) "transfer" (linodeTypeTransfer obj) : (Data.Aeson..=) "vcpus" (linodeTypeVcpus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "addons" (linodeTypeAddons obj) GHC.Base.<> ((Data.Aeson..=) "class" (linodeTypeClass obj) GHC.Base.<> ((Data.Aeson..=) "disk" (linodeTypeDisk obj) GHC.Base.<> ((Data.Aeson..=) "gpus" (linodeTypeGpus obj) GHC.Base.<> ((Data.Aeson..=) "id" (linodeTypeId obj) GHC.Base.<> ((Data.Aeson..=) "label" (linodeTypeLabel obj) GHC.Base.<> ((Data.Aeson..=) "memory" (linodeTypeMemory obj) GHC.Base.<> ((Data.Aeson..=) "network_out" (linodeTypeNetwork_out obj) GHC.Base.<> ((Data.Aeson..=) "price" (linodeTypePrice obj) GHC.Base.<> ((Data.Aeson..=) "successor" (linodeTypeSuccessor obj) GHC.Base.<> ((Data.Aeson..=) "transfer" (linodeTypeTransfer obj) GHC.Base.<> (Data.Aeson..=) "vcpus" (linodeTypeVcpus obj))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON LinodeType
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LinodeType" (\obj -> (((((((((((GHC.Base.pure LinodeType GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "addons")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "class")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gpus")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "memory")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "network_out")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "successor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vcpus"))
-- | Defines the data type for the schema LinodeTypeAddons
-- 
-- A list of optional add-on services for Linodes and their associated costs.
data LinodeTypeAddons = LinodeTypeAddons {
  -- | backups: Information about the optional Backup service offered for Linodes.
  linodeTypeAddonsBackups :: (GHC.Base.Maybe LinodeTypeAddonsBackups)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON LinodeTypeAddons
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "backups" (linodeTypeAddonsBackups obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "backups" (linodeTypeAddonsBackups obj))
instance Data.Aeson.Types.FromJSON.FromJSON LinodeTypeAddons
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LinodeTypeAddons" (\obj -> GHC.Base.pure LinodeTypeAddons GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "backups"))
-- | Defines the data type for the schema LinodeTypeAddonsBackups
-- 
-- Information about the optional Backup service offered for Linodes.
data LinodeTypeAddonsBackups = LinodeTypeAddonsBackups {
  -- | price: Cost of enabling Backups for this Linode Type.
  linodeTypeAddonsBackupsPrice :: (GHC.Base.Maybe LinodeTypeAddonsBackupsPrice)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON LinodeTypeAddonsBackups
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "price" (linodeTypeAddonsBackupsPrice obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "price" (linodeTypeAddonsBackupsPrice obj))
instance Data.Aeson.Types.FromJSON.FromJSON LinodeTypeAddonsBackups
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LinodeTypeAddonsBackups" (\obj -> GHC.Base.pure LinodeTypeAddonsBackups GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "price"))
-- | Defines the data type for the schema LinodeTypeAddonsBackupsPrice
-- 
-- Cost of enabling Backups for this Linode Type.
data LinodeTypeAddonsBackupsPrice = LinodeTypeAddonsBackupsPrice {
  -- | hourly: The cost (in US dollars) per hour to add Backups service.
  linodeTypeAddonsBackupsPriceHourly :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | monthly: The cost (in US dollars) per month to add Backups service.
  , linodeTypeAddonsBackupsPriceMonthly :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON LinodeTypeAddonsBackupsPrice
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "hourly" (linodeTypeAddonsBackupsPriceHourly obj) : (Data.Aeson..=) "monthly" (linodeTypeAddonsBackupsPriceMonthly obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "hourly" (linodeTypeAddonsBackupsPriceHourly obj) GHC.Base.<> (Data.Aeson..=) "monthly" (linodeTypeAddonsBackupsPriceMonthly obj))
instance Data.Aeson.Types.FromJSON.FromJSON LinodeTypeAddonsBackupsPrice
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LinodeTypeAddonsBackupsPrice" (\obj -> (GHC.Base.pure LinodeTypeAddonsBackupsPrice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "hourly")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "monthly"))
-- | Defines the enum schema LinodeTypeClass
-- 
-- The class of the Linode Type. We currently offer five classes of Linodes:
-- 
--   * nanode - Nanode instances are good for low-duty workloads,
--     where performance isn\'t critical. **Note:** As of June 16th, 2020, Nanodes became
--     1 GB Linodes in the Cloud Manager, however, the API, the CLI, and billing will
--     continue to refer to these instances as Nanodes.
--   * standard - Standard Shared instances are good for medium-duty workloads and
--     are a good mix of performance, resources, and price. **Note:** As of June 16th, 2020,
--     Standard Linodes in the Cloud Manager became Shared Linodes, however, the API, the CLI, and
--     billing will continue to refer to these instances as Standard Linodes.
--   * dedicated - Dedicated CPU instances are good for full-duty workloads
--     where consistent performance is important.
--   * gpu - Linodes with dedicated NVIDIA Quadro &reg; RTX 6000 GPUs accelerate highly
--     specialized applications such as machine learning, AI, and video transcoding.
--   * highmem - High Memory instances favor RAM over other resources, and can be
--     good for memory hungry use cases like caching and in-memory databases.
--     All High Memory plans contain dedicated CPU cores.
data LinodeTypeClass
    = LinodeTypeClassEnumOther Data.Aeson.Types.Internal.Value
    | LinodeTypeClassEnumTyped Data.Text.Internal.Text
    | LinodeTypeClassEnumString_dedicated
    | LinodeTypeClassEnumString_gpu
    | LinodeTypeClassEnumString_highmem
    | LinodeTypeClassEnumString_nanode
    | LinodeTypeClassEnumString_standard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON LinodeTypeClass
    where toJSON (LinodeTypeClassEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (LinodeTypeClassEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (LinodeTypeClassEnumString_dedicated) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "dedicated"
          toJSON (LinodeTypeClassEnumString_gpu) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "gpu"
          toJSON (LinodeTypeClassEnumString_highmem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "highmem"
          toJSON (LinodeTypeClassEnumString_nanode) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nanode"
          toJSON (LinodeTypeClassEnumString_standard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON LinodeTypeClass
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "dedicated")
                                          then LinodeTypeClassEnumString_dedicated
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "gpu")
                                                then LinodeTypeClassEnumString_gpu
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "highmem")
                                                      then LinodeTypeClassEnumString_highmem
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nanode")
                                                            then LinodeTypeClassEnumString_nanode
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                                  then LinodeTypeClassEnumString_standard
                                                                  else LinodeTypeClassEnumOther val)
-- | Defines the data type for the schema LinodeTypePrice
-- 
-- Cost in US dollars, broken down into hourly and monthly charges.
data LinodeTypePrice = LinodeTypePrice {
  -- | hourly: Cost (in US dollars) per hour.
  linodeTypePriceHourly :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | monthly: Cost (in US dollars) per month.
  , linodeTypePriceMonthly :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON LinodeTypePrice
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "hourly" (linodeTypePriceHourly obj) : (Data.Aeson..=) "monthly" (linodeTypePriceMonthly obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "hourly" (linodeTypePriceHourly obj) GHC.Base.<> (Data.Aeson..=) "monthly" (linodeTypePriceMonthly obj))
instance Data.Aeson.Types.FromJSON.FromJSON LinodeTypePrice
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LinodeTypePrice" (\obj -> (GHC.Base.pure LinodeTypePrice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "hourly")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "monthly"))