{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Linode.ManualTypes where

import qualified Data.Text

import Linode.Types.Disk
import Linode.Types.Firewall
import Linode.Types.ServiceTransfer
import Linode.Types.EntityTransfer

type Disk_properties_filesystem = DiskFilesystem
type Disk_properties_label = Data.Text.Text
type DiskRequest_properties_authorized_keys = [Data.Text.Text]
type DiskRequest_properties_authorized_users = [Data.Text.Text]
type DiskRequest_properties_image = Data.Text.Text
type DiskRequest_properties_root_pass = Data.Text.Text
type DiskRequest_properties_stackscript_data = Data.Text.Text
type DiskRequest_properties_stackscript_id = Data.Text.Text
type LKENodePool_properties_count = Integer
type LKENodePool_properties_disks_items = Disk
type LKENodePool_properties_tags = [Data.Text.Text]
type LKENodePoolRequestBody_properties_count = Integer
type LKECluster_properties_label = Data.Text.Text
type LKECluster_properties_created = Data.Text.Text
type LKECluster_properties_k8s_version = Data.Text.Text
type LKECluster_properties_region = Data.Text.Text
type LKECluster_properties_updated = Data.Text.Text
type LKECluster_properties_tags = [Data.Text.Text]
type LKENodePool_properties_type = Data.Text.Text
type Region_properties_id = Data.Text.Text
type Firewall_properties_rules = FirewallRules
type Firewall_properties_label = Data.Text.Text
type Firewall_properties_tags = [Data.Text.Text]
type Firewall_properties_status = FirewallStatus
type Volume_properties_size = Integer
type Volume_properties_label = Data.Text.Text
type PaginationEnvelope_properties_page = Integer
type PaginationEnvelope_properties_pages = Integer
type PaginationEnvelope_properties_results = Integer
type ServiceTransfer_properties_entities = ServiceTransferEntities
type PersonalAccessToken_properties_label = Data.Text.Text
type PaymentMethod_properties_is_default = Bool
type NodeBalancer_properties_client_conn_throttle = Integer
type NodeBalancer_properties_label = Data.Text.Text
type Linode_properties_group = Data.Text.Text
type Linode_properties_label = Data.Text.Text
type Linode_properties_tags = [Data.Text.Text]
type EntityTransfer_properties_entities = EntityTransferEntities

