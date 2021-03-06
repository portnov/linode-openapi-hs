-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation addLinodeConfig
module Linode.Operations.AddLinodeConfig where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified Linode.Common
import Linode.Types

-- | > POST /linode/instances/{linodeId}/configs
-- 
-- Adds a new Configuration profile to a Linode.
addLinodeConfig :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ linodeId: ID of the Linode to look up Configuration profiles for.
  -> AddLinodeConfigRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response AddLinodeConfigResponse) -- ^ Monadic computation which returns the result of the operation
addLinodeConfig linodeId
                body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either AddLinodeConfigResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> AddLinodeConfigResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                LinodeConfig)
                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> AddLinodeConfigResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  AddLinodeConfigResponseBodyDefault)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/linode/instances/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel linodeId)) GHC.Base.++ "/configs"))) GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/linode\/instances\/{linodeId}\/configs.POST.requestBody.content.application\/json.schema.allOf@ in the specification.
-- 
-- 
data AddLinodeConfigRequestBody = AddLinodeConfigRequestBody {
  -- | comments: Optional field for arbitrary User comments on this Config.
  addLinodeConfigRequestBodyComments :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | devices: A dictionary of device disks to use as a device map in a Linode\'s configuration profile.
  -- * An empty device disk dictionary or a dictionary with empty values for device slots is allowed.
  -- * If no devices are specified, booting from this configuration will hold until a device exists that allows the boot process to start.
  , addLinodeConfigRequestBodyDevices :: (GHC.Maybe.Maybe Devices)
  -- | helpers: Helpers enabled when booting to this Linode Config.
  , addLinodeConfigRequestBodyHelpers :: (GHC.Maybe.Maybe AddLinodeConfigRequestBodyHelpers')
  -- | id: The ID of this Config.
  , addLinodeConfigRequestBodyId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | interfaces: An array of Network Interfaces to add to this Linode\'s Configuration Profile.
  -- 
  -- Up to three interface objects can be entered in this array. The position in the array determines the interface to which the settings apply:
  -- 
  -- - First\/0:  eth0
  -- - Second\/1: eth1
  -- - Third\/2:  eth2
  -- 
  -- When updating a Linode\'s interfaces, *each interface must be redefined*. An empty interfaces array results in a default public interface configuration only.
  -- 
  -- If no public interface is configured, public IP addresses are still assigned to the Linode but will not be usable without manual configuration.
  -- 
  -- **Note:** Changes to Linode interface configurations can be enabled by rebooting the Linode.
  -- 
  -- **Note:** Only Next Generation Network (NGN) data centers support VLANs. Use the Regions ([\/regions](\/docs\/api\/regions\/)) endpoint to view the capabilities of data center regions.
  -- If a VLAN is attached to your Linode and you attempt to migrate or clone it to a non-NGN data center,
  -- the migration or cloning will not initiate. If a Linode cannot be migrated because of an incompatibility,
  -- you will be prompted to select a different data center or contact support.
  -- 
  -- **Note:** See our guide on [Getting Started with VLANs](\/docs\/guides\/getting-started-with-vlans\/) to view additional [limitations](\/docs\/guides\/getting-started-with-vlans\/\#limitations).
  , addLinodeConfigRequestBodyInterfaces :: (GHC.Maybe.Maybe LinodeConfigInterfaces)
  -- | kernel: A Kernel ID to boot a Linode with. Defaults to \"linode\/latest-64bit\".
  , addLinodeConfigRequestBodyKernel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | label: The Config\'s label is for display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 48
  -- * Minimum length of 1
  , addLinodeConfigRequestBodyLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | memory_limit: Defaults to the total RAM of the Linode.
  , addLinodeConfigRequestBodyMemoryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | root_device: The root device to boot.
  -- * If no value or an invalid value is provided, root device will default to \`\/dev\/sda\`.
  -- * If the device specified at the root device location is not mounted, the Linode will not boot until a device is mounted.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Must match pattern \'a-z, A-Z, 0-9, \/, _, -\'
  , addLinodeConfigRequestBodyRootDevice :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | run_level: Defines the state of your Linode after booting. Defaults to \`default\`.
  , addLinodeConfigRequestBodyRunLevel :: (GHC.Maybe.Maybe AddLinodeConfigRequestBodyRunLevel')
  -- | virt_mode: Controls the virtualization mode. Defaults to \`paravirt\`.
  -- * \`paravirt\` is suitable for most cases. Linodes running in paravirt mode
  --   share some qualities with the host, ultimately making it run faster since
  --   there is less transition between it and the host.
  -- * \`fullvirt\` affords more customization, but is slower because 100% of the VM
  --   is virtualized.
  , addLinodeConfigRequestBodyVirtMode :: (GHC.Maybe.Maybe AddLinodeConfigRequestBodyVirtMode')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddLinodeConfigRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("comments" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyComments obj : "devices" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyDevices obj : "helpers" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers obj : "id" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyId obj : "interfaces" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyInterfaces obj : "kernel" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyKernel obj : "label" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyLabel obj : "memory_limit" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyMemoryLimit obj : "root_device" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyRootDevice obj : "run_level" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyRunLevel obj : "virt_mode" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyVirtMode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("comments" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyComments obj) GHC.Base.<> (("devices" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyDevices obj) GHC.Base.<> (("helpers" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyId obj) GHC.Base.<> (("interfaces" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyInterfaces obj) GHC.Base.<> (("kernel" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyKernel obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyLabel obj) GHC.Base.<> (("memory_limit" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyMemoryLimit obj) GHC.Base.<> (("root_device" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyRootDevice obj) GHC.Base.<> (("run_level" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyRunLevel obj) GHC.Base.<> ("virt_mode" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyVirtMode obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON AddLinodeConfigRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddLinodeConfigRequestBody" (\obj -> ((((((((((GHC.Base.pure AddLinodeConfigRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "comments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "devices")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "helpers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interfaces")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "kernel")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "memory_limit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "root_device")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "run_level")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "virt_mode"))
-- | Create a new 'AddLinodeConfigRequestBody' with all required fields.
mkAddLinodeConfigRequestBody :: AddLinodeConfigRequestBody
mkAddLinodeConfigRequestBody = AddLinodeConfigRequestBody{addLinodeConfigRequestBodyComments = GHC.Maybe.Nothing,
                                                          addLinodeConfigRequestBodyDevices = GHC.Maybe.Nothing,
                                                          addLinodeConfigRequestBodyHelpers = GHC.Maybe.Nothing,
                                                          addLinodeConfigRequestBodyId = GHC.Maybe.Nothing,
                                                          addLinodeConfigRequestBodyInterfaces = GHC.Maybe.Nothing,
                                                          addLinodeConfigRequestBodyKernel = GHC.Maybe.Nothing,
                                                          addLinodeConfigRequestBodyLabel = GHC.Maybe.Nothing,
                                                          addLinodeConfigRequestBodyMemoryLimit = GHC.Maybe.Nothing,
                                                          addLinodeConfigRequestBodyRootDevice = GHC.Maybe.Nothing,
                                                          addLinodeConfigRequestBodyRunLevel = GHC.Maybe.Nothing,
                                                          addLinodeConfigRequestBodyVirtMode = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/linode\/instances\/{linodeId}\/configs.POST.requestBody.content.application\/json.schema.allOf.properties.helpers@ in the specification.
-- 
-- Helpers enabled when booting to this Linode Config.
data AddLinodeConfigRequestBodyHelpers' = AddLinodeConfigRequestBodyHelpers' {
  -- | devtmpfs_automount: Populates the \/dev directory early during boot without udev.  Defaults to false.
  addLinodeConfigRequestBodyHelpers'DevtmpfsAutomount :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | distro: Helps maintain correct inittab\/upstart console device.
  , addLinodeConfigRequestBodyHelpers'Distro :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | modules_dep: Creates a modules dependency file for the Kernel you run.
  , addLinodeConfigRequestBodyHelpers'ModulesDep :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | network: Automatically configures static networking.
  , addLinodeConfigRequestBodyHelpers'Network :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | updatedb_disabled: Disables updatedb cron job to avoid disk thrashing.
  , addLinodeConfigRequestBodyHelpers'UpdatedbDisabled :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddLinodeConfigRequestBodyHelpers'
    where toJSON obj = Data.Aeson.Types.Internal.object ("devtmpfs_automount" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers'DevtmpfsAutomount obj : "distro" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers'Distro obj : "modules_dep" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers'ModulesDep obj : "network" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers'Network obj : "updatedb_disabled" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers'UpdatedbDisabled obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("devtmpfs_automount" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers'DevtmpfsAutomount obj) GHC.Base.<> (("distro" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers'Distro obj) GHC.Base.<> (("modules_dep" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers'ModulesDep obj) GHC.Base.<> (("network" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers'Network obj) GHC.Base.<> ("updatedb_disabled" Data.Aeson.Types.ToJSON..= addLinodeConfigRequestBodyHelpers'UpdatedbDisabled obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON AddLinodeConfigRequestBodyHelpers'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddLinodeConfigRequestBodyHelpers'" (\obj -> ((((GHC.Base.pure AddLinodeConfigRequestBodyHelpers' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "devtmpfs_automount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "distro")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "modules_dep")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "network")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updatedb_disabled"))
-- | Create a new 'AddLinodeConfigRequestBodyHelpers'' with all required fields.
mkAddLinodeConfigRequestBodyHelpers' :: AddLinodeConfigRequestBodyHelpers'
mkAddLinodeConfigRequestBodyHelpers' = AddLinodeConfigRequestBodyHelpers'{addLinodeConfigRequestBodyHelpers'DevtmpfsAutomount = GHC.Maybe.Nothing,
                                                                          addLinodeConfigRequestBodyHelpers'Distro = GHC.Maybe.Nothing,
                                                                          addLinodeConfigRequestBodyHelpers'ModulesDep = GHC.Maybe.Nothing,
                                                                          addLinodeConfigRequestBodyHelpers'Network = GHC.Maybe.Nothing,
                                                                          addLinodeConfigRequestBodyHelpers'UpdatedbDisabled = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/linode\/instances\/{linodeId}\/configs.POST.requestBody.content.application\/json.schema.allOf.properties.run_level@ in the specification.
-- 
-- Defines the state of your Linode after booting. Defaults to \`default\`.
data AddLinodeConfigRequestBodyRunLevel' =
   AddLinodeConfigRequestBodyRunLevel'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | AddLinodeConfigRequestBodyRunLevel'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | AddLinodeConfigRequestBodyRunLevel'EnumDefault -- ^ Represents the JSON value @"default"@
  | AddLinodeConfigRequestBodyRunLevel'EnumSingle -- ^ Represents the JSON value @"single"@
  | AddLinodeConfigRequestBodyRunLevel'EnumBinbash -- ^ Represents the JSON value @"binbash"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddLinodeConfigRequestBodyRunLevel'
    where toJSON (AddLinodeConfigRequestBodyRunLevel'Other val) = val
          toJSON (AddLinodeConfigRequestBodyRunLevel'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (AddLinodeConfigRequestBodyRunLevel'EnumDefault) = "default"
          toJSON (AddLinodeConfigRequestBodyRunLevel'EnumSingle) = "single"
          toJSON (AddLinodeConfigRequestBodyRunLevel'EnumBinbash) = "binbash"
instance Data.Aeson.Types.FromJSON.FromJSON AddLinodeConfigRequestBodyRunLevel'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "default" -> AddLinodeConfigRequestBodyRunLevel'EnumDefault
                                            | val GHC.Classes.== "single" -> AddLinodeConfigRequestBodyRunLevel'EnumSingle
                                            | val GHC.Classes.== "binbash" -> AddLinodeConfigRequestBodyRunLevel'EnumBinbash
                                            | GHC.Base.otherwise -> AddLinodeConfigRequestBodyRunLevel'Other val)
-- | Defines the enum schema located at @paths.\/linode\/instances\/{linodeId}\/configs.POST.requestBody.content.application\/json.schema.allOf.properties.virt_mode@ in the specification.
-- 
-- Controls the virtualization mode. Defaults to \`paravirt\`.
-- * \`paravirt\` is suitable for most cases. Linodes running in paravirt mode
--   share some qualities with the host, ultimately making it run faster since
--   there is less transition between it and the host.
-- * \`fullvirt\` affords more customization, but is slower because 100% of the VM
--   is virtualized.
data AddLinodeConfigRequestBodyVirtMode' =
   AddLinodeConfigRequestBodyVirtMode'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | AddLinodeConfigRequestBodyVirtMode'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | AddLinodeConfigRequestBodyVirtMode'EnumParavirt -- ^ Represents the JSON value @"paravirt"@
  | AddLinodeConfigRequestBodyVirtMode'EnumFullvirt -- ^ Represents the JSON value @"fullvirt"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddLinodeConfigRequestBodyVirtMode'
    where toJSON (AddLinodeConfigRequestBodyVirtMode'Other val) = val
          toJSON (AddLinodeConfigRequestBodyVirtMode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (AddLinodeConfigRequestBodyVirtMode'EnumParavirt) = "paravirt"
          toJSON (AddLinodeConfigRequestBodyVirtMode'EnumFullvirt) = "fullvirt"
instance Data.Aeson.Types.FromJSON.FromJSON AddLinodeConfigRequestBodyVirtMode'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "paravirt" -> AddLinodeConfigRequestBodyVirtMode'EnumParavirt
                                            | val GHC.Classes.== "fullvirt" -> AddLinodeConfigRequestBodyVirtMode'EnumFullvirt
                                            | GHC.Base.otherwise -> AddLinodeConfigRequestBodyVirtMode'Other val)
-- | Represents a response of the operation 'addLinodeConfig'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'AddLinodeConfigResponseError' is used.
data AddLinodeConfigResponse =
   AddLinodeConfigResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | AddLinodeConfigResponse200 LinodeConfig -- ^ A Configuration profile was created. 
  | AddLinodeConfigResponseDefault AddLinodeConfigResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data AddLinodeConfigResponseBodyDefault = AddLinodeConfigResponseBodyDefault {
  -- | errors
  addLinodeConfigResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AddLinodeConfigResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= addLinodeConfigResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= addLinodeConfigResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON AddLinodeConfigResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AddLinodeConfigResponseBodyDefault" (\obj -> GHC.Base.pure AddLinodeConfigResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'AddLinodeConfigResponseBodyDefault' with all required fields.
mkAddLinodeConfigResponseBodyDefault :: AddLinodeConfigResponseBodyDefault
mkAddLinodeConfigResponseBodyDefault = AddLinodeConfigResponseBodyDefault{addLinodeConfigResponseBodyDefaultErrors = GHC.Maybe.Nothing}
