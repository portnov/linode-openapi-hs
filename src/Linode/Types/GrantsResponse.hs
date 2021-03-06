-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema GrantsResponse
module Linode.Types.GrantsResponse where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
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
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Linode.Common
import Linode.TypeAlias
import {-# SOURCE #-} Linode.Types.Grant

-- | Defines the object schema located at @components.schemas.GrantsResponse@ in the specification.
-- 
-- A structure representing all grants a restricted User has on the Account. Not available for unrestricted users, as they have access to everything without grants. If retrieved from the \`\/profile\/grants\` endpoint, entities to which a User has no access will be omitted.
data GrantsResponse = GrantsResponse {
  -- | domain: The grants this User has pertaining to Domains on this Account. There will be one entry per Domain on the Account.
  grantsResponseDomain :: (GHC.Maybe.Maybe ([Grant]))
  -- | global: A structure containing the Account-level grants a User has.
  , grantsResponseGlobal :: (GHC.Maybe.Maybe GrantsResponseGlobal')
  -- | image: The grants this User has pertaining to Images on this Account. There will be one entry per Image on the Account.
  , grantsResponseImage :: (GHC.Maybe.Maybe ([Grant]))
  -- | linode: The grants this User has pertaining to Linodes on this Account. There will be one entry per Linode on the Account.
  , grantsResponseLinode :: (GHC.Maybe.Maybe ([Grant]))
  -- | longview: The grants this User has pertaining to Longview Clients on this Account. There will be one entry per Longview Client on the Account.
  , grantsResponseLongview :: (GHC.Maybe.Maybe ([Grant]))
  -- | nodebalancer: The grants this User has pertaining to NodeBalancers on this Account. There will be one entry per NodeBalancer on the Account.
  , grantsResponseNodebalancer :: (GHC.Maybe.Maybe ([Grant]))
  -- | stackscript: The grants this User has pertaining to StackScripts on this Account.  There will be one entry per StackScript on the Account.
  , grantsResponseStackscript :: (GHC.Maybe.Maybe ([Grant]))
  -- | volume: The grants this User has pertaining to Volumes on this Account. There will be one entry per Volume on the Account.
  , grantsResponseVolume :: (GHC.Maybe.Maybe ([Grant]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GrantsResponse
    where toJSON obj = Data.Aeson.Types.Internal.object ("domain" Data.Aeson.Types.ToJSON..= grantsResponseDomain obj : "global" Data.Aeson.Types.ToJSON..= grantsResponseGlobal obj : "image" Data.Aeson.Types.ToJSON..= grantsResponseImage obj : "linode" Data.Aeson.Types.ToJSON..= grantsResponseLinode obj : "longview" Data.Aeson.Types.ToJSON..= grantsResponseLongview obj : "nodebalancer" Data.Aeson.Types.ToJSON..= grantsResponseNodebalancer obj : "stackscript" Data.Aeson.Types.ToJSON..= grantsResponseStackscript obj : "volume" Data.Aeson.Types.ToJSON..= grantsResponseVolume obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("domain" Data.Aeson.Types.ToJSON..= grantsResponseDomain obj) GHC.Base.<> (("global" Data.Aeson.Types.ToJSON..= grantsResponseGlobal obj) GHC.Base.<> (("image" Data.Aeson.Types.ToJSON..= grantsResponseImage obj) GHC.Base.<> (("linode" Data.Aeson.Types.ToJSON..= grantsResponseLinode obj) GHC.Base.<> (("longview" Data.Aeson.Types.ToJSON..= grantsResponseLongview obj) GHC.Base.<> (("nodebalancer" Data.Aeson.Types.ToJSON..= grantsResponseNodebalancer obj) GHC.Base.<> (("stackscript" Data.Aeson.Types.ToJSON..= grantsResponseStackscript obj) GHC.Base.<> ("volume" Data.Aeson.Types.ToJSON..= grantsResponseVolume obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GrantsResponse
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GrantsResponse" (\obj -> (((((((GHC.Base.pure GrantsResponse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "domain")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "global")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "linode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "longview")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "nodebalancer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "stackscript")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "volume"))
-- | Create a new 'GrantsResponse' with all required fields.
mkGrantsResponse :: GrantsResponse
mkGrantsResponse = GrantsResponse{grantsResponseDomain = GHC.Maybe.Nothing,
                                  grantsResponseGlobal = GHC.Maybe.Nothing,
                                  grantsResponseImage = GHC.Maybe.Nothing,
                                  grantsResponseLinode = GHC.Maybe.Nothing,
                                  grantsResponseLongview = GHC.Maybe.Nothing,
                                  grantsResponseNodebalancer = GHC.Maybe.Nothing,
                                  grantsResponseStackscript = GHC.Maybe.Nothing,
                                  grantsResponseVolume = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.GrantsResponse.properties.global@ in the specification.
-- 
-- A structure containing the Account-level grants a User has.
data GrantsResponseGlobal' = GrantsResponseGlobal' {
  -- | account_access: The level of access this User has to Account-level actions, like billing information. A restricted User will never be able to manage users.
  grantsResponseGlobal'AccountAccess :: (GHC.Maybe.Maybe GrantsResponseGlobal'AccountAccess')
  -- | add_domains: If true, this User may add Domains.
  , grantsResponseGlobal'AddDomains :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | add_firewalls: If true, this User may add Firewalls.
  , grantsResponseGlobal'AddFirewalls :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | add_images: If true, this User may add Images.
  , grantsResponseGlobal'AddImages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | add_linodes: If true, this User may create Linodes.
  , grantsResponseGlobal'AddLinodes :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | add_longview: If true, this User may create Longview clients and view the current plan.
  , grantsResponseGlobal'AddLongview :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | add_nodebalancers: If true, this User may add NodeBalancers.
  , grantsResponseGlobal'AddNodebalancers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | add_stackscripts: If true, this User may add StackScripts.
  , grantsResponseGlobal'AddStackscripts :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | add_volumes: If true, this User may add Volumes.
  , grantsResponseGlobal'AddVolumes :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | cancel_account: If true, this User may cancel the entire Account.
  , grantsResponseGlobal'CancelAccount :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | longview_subscription: If true, this User may manage the Account\'s Longview subscription.
  , grantsResponseGlobal'LongviewSubscription :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GrantsResponseGlobal'
    where toJSON obj = Data.Aeson.Types.Internal.object ("account_access" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AccountAccess obj : "add_domains" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddDomains obj : "add_firewalls" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddFirewalls obj : "add_images" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddImages obj : "add_linodes" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddLinodes obj : "add_longview" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddLongview obj : "add_nodebalancers" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddNodebalancers obj : "add_stackscripts" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddStackscripts obj : "add_volumes" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddVolumes obj : "cancel_account" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'CancelAccount obj : "longview_subscription" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'LongviewSubscription obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("account_access" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AccountAccess obj) GHC.Base.<> (("add_domains" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddDomains obj) GHC.Base.<> (("add_firewalls" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddFirewalls obj) GHC.Base.<> (("add_images" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddImages obj) GHC.Base.<> (("add_linodes" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddLinodes obj) GHC.Base.<> (("add_longview" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddLongview obj) GHC.Base.<> (("add_nodebalancers" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddNodebalancers obj) GHC.Base.<> (("add_stackscripts" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddStackscripts obj) GHC.Base.<> (("add_volumes" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'AddVolumes obj) GHC.Base.<> (("cancel_account" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'CancelAccount obj) GHC.Base.<> ("longview_subscription" Data.Aeson.Types.ToJSON..= grantsResponseGlobal'LongviewSubscription obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GrantsResponseGlobal'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GrantsResponseGlobal'" (\obj -> ((((((((((GHC.Base.pure GrantsResponseGlobal' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_access")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "add_domains")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "add_firewalls")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "add_images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "add_linodes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "add_longview")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "add_nodebalancers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "add_stackscripts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "add_volumes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "longview_subscription"))
-- | Create a new 'GrantsResponseGlobal'' with all required fields.
mkGrantsResponseGlobal' :: GrantsResponseGlobal'
mkGrantsResponseGlobal' = GrantsResponseGlobal'{grantsResponseGlobal'AccountAccess = GHC.Maybe.Nothing,
                                                grantsResponseGlobal'AddDomains = GHC.Maybe.Nothing,
                                                grantsResponseGlobal'AddFirewalls = GHC.Maybe.Nothing,
                                                grantsResponseGlobal'AddImages = GHC.Maybe.Nothing,
                                                grantsResponseGlobal'AddLinodes = GHC.Maybe.Nothing,
                                                grantsResponseGlobal'AddLongview = GHC.Maybe.Nothing,
                                                grantsResponseGlobal'AddNodebalancers = GHC.Maybe.Nothing,
                                                grantsResponseGlobal'AddStackscripts = GHC.Maybe.Nothing,
                                                grantsResponseGlobal'AddVolumes = GHC.Maybe.Nothing,
                                                grantsResponseGlobal'CancelAccount = GHC.Maybe.Nothing,
                                                grantsResponseGlobal'LongviewSubscription = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.GrantsResponse.properties.global.properties.account_access@ in the specification.
-- 
-- The level of access this User has to Account-level actions, like billing information. A restricted User will never be able to manage users.
data GrantsResponseGlobal'AccountAccess' =
   GrantsResponseGlobal'AccountAccess'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GrantsResponseGlobal'AccountAccess'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GrantsResponseGlobal'AccountAccess'EnumReadOnly -- ^ Represents the JSON value @"read_only"@
  | GrantsResponseGlobal'AccountAccess'EnumReadWrite -- ^ Represents the JSON value @"read_write"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GrantsResponseGlobal'AccountAccess'
    where toJSON (GrantsResponseGlobal'AccountAccess'Other val) = val
          toJSON (GrantsResponseGlobal'AccountAccess'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GrantsResponseGlobal'AccountAccess'EnumReadOnly) = "read_only"
          toJSON (GrantsResponseGlobal'AccountAccess'EnumReadWrite) = "read_write"
instance Data.Aeson.Types.FromJSON.FromJSON GrantsResponseGlobal'AccountAccess'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "read_only" -> GrantsResponseGlobal'AccountAccess'EnumReadOnly
                                            | val GHC.Classes.== "read_write" -> GrantsResponseGlobal'AccountAccess'EnumReadWrite
                                            | GHC.Base.otherwise -> GrantsResponseGlobal'AccountAccess'Other val)
