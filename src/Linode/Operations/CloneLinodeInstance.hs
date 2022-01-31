-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation cloneLinodeInstance
module Linode.Operations.CloneLinodeInstance where

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

-- | > POST /linode/instances/{linodeId}/clone
-- 
-- You can clone your Linode\'s existing Disks or Configuration profiles to
-- another Linode on your Account. In order for this request to complete
-- successfully, your User must have the \`add_linodes\` grant. Cloning to a
-- new Linode will incur a charge on your Account.
-- 
-- If cloning to an existing Linode, any actions currently running or
-- queued must be completed first before you can clone to it.
-- 
-- Up to five clone operations from any given source Linode can be run concurrently.
-- If more concurrent clones are attempted, an HTTP 400 error will be
-- returned by this endpoint.
-- 
-- Any [tags](\/docs\/api\/tags\/\#tags-list) existing on the source Linode will be cloned to the target Linode.
cloneLinodeInstance :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ linodeId: ID of the Linode to clone.
  -> CloneLinodeInstanceRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response CloneLinodeInstanceResponse) -- ^ Monadic computation which returns the result of the operation
cloneLinodeInstance linodeId
                    body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either CloneLinodeInstanceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CloneLinodeInstanceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Linode)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CloneLinodeInstanceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              CloneLinodeInstanceResponseBodyDefault)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/linode/instances/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel linodeId)) GHC.Base.++ "/clone"))) GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/linode\/instances\/{linodeId}\/clone.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data CloneLinodeInstanceRequestBody = CloneLinodeInstanceRequestBody {
  -- | backups_enabled: If this field is set to \`true\`, the created Linode will
  -- automatically be enrolled in the Linode Backup service. This
  -- will incur an additional charge. Pricing is included in the
  -- response from
  -- [\/linodes\/types](\/docs\/api\/linode-types\/\#types-list).
  -- 
  -- * Can only be included when cloning to a new Linode.
  cloneLinodeInstanceRequestBodyBackupsEnabled :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | configs: An array of configuration profile IDs.
  -- * If the \`configs\` parameter **is not provided**, then **all configuration profiles and their associated disks will be cloned** from the source Linode. Any disks specified by the \`disks\` parameter will also be cloned.
  -- * **If an empty array is provided** for the \`configs\` parameter, then **no configuration profiles (nor their associated disks) will be cloned** from the source Linode. Any disks specified by the \`disks\` parameter will still be cloned.
  -- * **If a non-empty array is provided** for the \`configs\` parameter, then **the configuration profiles specified in the array (and their associated disks) will be cloned** from the source Linode. Any disks specified by the \`disks\` parameter will also be cloned.
  , cloneLinodeInstanceRequestBodyConfigs :: (GHC.Maybe.Maybe ([GHC.Types.Int]))
  -- | disks: An array of disk IDs.
  -- * If the \`disks\` parameter **is not provided**, then **no extra disks will be cloned** from the source Linode. All disks associated with the configuration profiles specified by the \`configs\` parameter will still be cloned.
  -- * **If an empty array is provided** for the \`disks\` parameter, then **no extra disks will be cloned** from the source Linode. All disks associated with the configuration profiles specified by the \`configs\` parameter will still be cloned.
  -- * **If a non-empty array is provided** for the \`disks\` parameter, then **the disks specified in the array will be cloned** from the source Linode, in addition to any disks associated with the configuration profiles specified by the \`configs\` parameter.
  , cloneLinodeInstanceRequestBodyDisks :: (GHC.Maybe.Maybe ([GHC.Types.Int]))
  -- | group: A label used to group Linodes for display. Linodes are not required to have a group.
  , cloneLinodeInstanceRequestBodyGroup :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | label: The label to assign this Linode when cloning to a new Linode.
  -- * Can only be provided when cloning to a new Linode. * Defaults to \"linode\".
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 64
  -- * Minimum length of 3
  , cloneLinodeInstanceRequestBodyLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | linode_id: If an existing Linode is the target for the clone, the ID of that Linode. The existing Linode must have enough resources to accept the clone.
  , cloneLinodeInstanceRequestBodyLinodeId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | region: This is the Region where the Linode will be deployed.
  -- To view all available Regions you can deploy to see [\/regions](\/docs\/api\/regions\/\#regions-list).
  -- * Region can only be provided and is required when cloning to a new Linode.
  , cloneLinodeInstanceRequestBodyRegion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: A Linode\'s Type determines what resources are available to
  -- it, including disk space, memory, and virtual cpus. The
  -- amounts available to a specific Linode are returned as
  -- \`specs\` on the Linode object.
  -- 
  -- To view all available Linode Types you can deploy with
  -- see [\/linode\/types](\/docs\/api\/linode-types\/\#types-list).
  -- 
  -- * Type can only be provided and is required when cloning to a new Linode.
  , cloneLinodeInstanceRequestBodyType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CloneLinodeInstanceRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("backups_enabled" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyBackupsEnabled obj : "configs" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyConfigs obj : "disks" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyDisks obj : "group" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyGroup obj : "label" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyLabel obj : "linode_id" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyLinodeId obj : "region" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyRegion obj : "type" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("backups_enabled" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyBackupsEnabled obj) GHC.Base.<> (("configs" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyConfigs obj) GHC.Base.<> (("disks" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyDisks obj) GHC.Base.<> (("group" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyGroup obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyLabel obj) GHC.Base.<> (("linode_id" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyLinodeId obj) GHC.Base.<> (("region" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyRegion obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceRequestBodyType obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CloneLinodeInstanceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CloneLinodeInstanceRequestBody" (\obj -> (((((((GHC.Base.pure CloneLinodeInstanceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "backups_enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "configs")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "linode_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Create a new 'CloneLinodeInstanceRequestBody' with all required fields.
mkCloneLinodeInstanceRequestBody :: CloneLinodeInstanceRequestBody
mkCloneLinodeInstanceRequestBody = CloneLinodeInstanceRequestBody{cloneLinodeInstanceRequestBodyBackupsEnabled = GHC.Maybe.Nothing,
                                                                  cloneLinodeInstanceRequestBodyConfigs = GHC.Maybe.Nothing,
                                                                  cloneLinodeInstanceRequestBodyDisks = GHC.Maybe.Nothing,
                                                                  cloneLinodeInstanceRequestBodyGroup = GHC.Maybe.Nothing,
                                                                  cloneLinodeInstanceRequestBodyLabel = GHC.Maybe.Nothing,
                                                                  cloneLinodeInstanceRequestBodyLinodeId = GHC.Maybe.Nothing,
                                                                  cloneLinodeInstanceRequestBodyRegion = GHC.Maybe.Nothing,
                                                                  cloneLinodeInstanceRequestBodyType = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'cloneLinodeInstance'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CloneLinodeInstanceResponseError' is used.
data CloneLinodeInstanceResponse =
   CloneLinodeInstanceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | CloneLinodeInstanceResponse200 Linode -- ^ Clone started.
  | CloneLinodeInstanceResponseDefault CloneLinodeInstanceResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data CloneLinodeInstanceResponseBodyDefault = CloneLinodeInstanceResponseBodyDefault {
  -- | errors
  cloneLinodeInstanceResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CloneLinodeInstanceResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= cloneLinodeInstanceResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON CloneLinodeInstanceResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CloneLinodeInstanceResponseBodyDefault" (\obj -> GHC.Base.pure CloneLinodeInstanceResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'CloneLinodeInstanceResponseBodyDefault' with all required fields.
mkCloneLinodeInstanceResponseBodyDefault :: CloneLinodeInstanceResponseBodyDefault
mkCloneLinodeInstanceResponseBodyDefault = CloneLinodeInstanceResponseBodyDefault{cloneLinodeInstanceResponseBodyDefaultErrors = GHC.Maybe.Nothing}
