-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation cloneLinodeInstance
module Linode.Operations.CloneLinodeInstance where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
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
import qualified GHC.Generics
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
cloneLinodeInstance :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> CloneLinodeInstanceRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response CloneLinodeInstanceResponse)) -- ^ Monad containing the result of the operation
cloneLinodeInstance config
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either CloneLinodeInstanceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CloneLinodeInstanceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Linode)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CloneLinodeInstanceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             CloneLinodeInstanceResponseBodyDefault)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/clone") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/instances/{linodeId}/clone
-- 
-- The same as 'cloneLinodeInstance' but returns the raw 'Data.ByteString.Char8.ByteString'
cloneLinodeInstanceRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                        Linode.Common.SecurityScheme s) =>
                          Linode.Common.Configuration s ->
                          CloneLinodeInstanceRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
cloneLinodeInstanceRaw config
                       body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/clone") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/instances/{linodeId}/clone
-- 
-- Monadic version of 'cloneLinodeInstance' (use with 'Linode.Common.runWithConfiguration')
cloneLinodeInstanceM :: forall m s . (Linode.Common.MonadHTTP m,
                                      Linode.Common.SecurityScheme s) =>
                        CloneLinodeInstanceRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response CloneLinodeInstanceResponse))
cloneLinodeInstanceM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either CloneLinodeInstanceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CloneLinodeInstanceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            Linode)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CloneLinodeInstanceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              CloneLinodeInstanceResponseBodyDefault)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/clone") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/instances/{linodeId}/clone
-- 
-- Monadic version of 'cloneLinodeInstanceRaw' (use with 'Linode.Common.runWithConfiguration')
cloneLinodeInstanceRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                         Linode.Common.SecurityScheme s) =>
                           CloneLinodeInstanceRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
cloneLinodeInstanceRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/clone") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema cloneLinodeInstanceRequestBody
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
  cloneLinodeInstanceRequestBodyBackups_enabled :: (GHC.Base.Maybe GHC.Types.Bool)
  -- | configs: An array of configuration profile IDs.
  -- * If the \`configs\` parameter **is not provided**, then **all configuration profiles and their associated disks will be cloned** from the source Linode. Any disks specified by the \`disks\` parameter will also be cloned.
  -- * **If an empty array is provided** for the \`configs\` parameter, then **no configuration profiles (nor their associated disks) will be cloned** from the source Linode. Any disks specified by the \`disks\` parameter will still be cloned.
  -- * **If a non-empty array is provided** for the \`configs\` parameter, then **the configuration profiles specified in the array (and their associated disks) will be cloned** from the source Linode. Any disks specified by the \`disks\` parameter will also be cloned.
  , cloneLinodeInstanceRequestBodyConfigs :: (GHC.Base.Maybe ([] GHC.Integer.Type.Integer))
  -- | disks: An array of disk IDs.
  -- * If the \`disks\` parameter **is not provided**, then **no extra disks will be cloned** from the source Linode. All disks associated with the configuration profiles specified by the \`configs\` parameter will still be cloned.
  -- * **If an empty array is provided** for the \`disks\` parameter, then **no extra disks will be cloned** from the source Linode. All disks associated with the configuration profiles specified by the \`configs\` parameter will still be cloned.
  -- * **If a non-empty array is provided** for the \`disks\` parameter, then **the disks specified in the array will be cloned** from the source Linode, in addition to any disks associated with the configuration profiles specified by the \`configs\` parameter.
  , cloneLinodeInstanceRequestBodyDisks :: (GHC.Base.Maybe ([] GHC.Integer.Type.Integer))
  -- | group: A label used to group Linodes for display. Linodes are not required to have a group.
  , cloneLinodeInstanceRequestBodyGroup :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | label: The label to assign this Linode when cloning to a new Linode.
  -- * Can only be provided when cloning to a new Linode. * Defaults to \"linode\".
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 64
  -- * Minimum length of 3
  , cloneLinodeInstanceRequestBodyLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | linode_id: If an existing Linode is the target for the clone, the ID of that Linode. The existing Linode must have enough resources to accept the clone.
  , cloneLinodeInstanceRequestBodyLinode_id :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | region: This is the Region where the Linode will be deployed.
  -- To view all available Regions you can deploy to see [\/regions](\/docs\/api\/regions\/\#regions-list).
  -- * Region can only be provided and is required when cloning to a new Linode.
  , cloneLinodeInstanceRequestBodyRegion :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | type: A Linode\'s Type determines what resources are available to
  -- it, including disk space, memory, and virtual cpus. The
  -- amounts available to a specific Linode are returned as
  -- \`specs\` on the Linode object.
  -- 
  -- To view all available Linode Types you can deploy with
  -- see [\/linode\/types](\/docs\/api\/linode-types\/\#types-list).
  -- 
  -- * Type can only be provided and is required when cloning to a new Linode.
  , cloneLinodeInstanceRequestBodyType :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CloneLinodeInstanceRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "backups_enabled" (cloneLinodeInstanceRequestBodyBackups_enabled obj) : (Data.Aeson..=) "configs" (cloneLinodeInstanceRequestBodyConfigs obj) : (Data.Aeson..=) "disks" (cloneLinodeInstanceRequestBodyDisks obj) : (Data.Aeson..=) "group" (cloneLinodeInstanceRequestBodyGroup obj) : (Data.Aeson..=) "label" (cloneLinodeInstanceRequestBodyLabel obj) : (Data.Aeson..=) "linode_id" (cloneLinodeInstanceRequestBodyLinode_id obj) : (Data.Aeson..=) "region" (cloneLinodeInstanceRequestBodyRegion obj) : (Data.Aeson..=) "type" (cloneLinodeInstanceRequestBodyType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "backups_enabled" (cloneLinodeInstanceRequestBodyBackups_enabled obj) GHC.Base.<> ((Data.Aeson..=) "configs" (cloneLinodeInstanceRequestBodyConfigs obj) GHC.Base.<> ((Data.Aeson..=) "disks" (cloneLinodeInstanceRequestBodyDisks obj) GHC.Base.<> ((Data.Aeson..=) "group" (cloneLinodeInstanceRequestBodyGroup obj) GHC.Base.<> ((Data.Aeson..=) "label" (cloneLinodeInstanceRequestBodyLabel obj) GHC.Base.<> ((Data.Aeson..=) "linode_id" (cloneLinodeInstanceRequestBodyLinode_id obj) GHC.Base.<> ((Data.Aeson..=) "region" (cloneLinodeInstanceRequestBodyRegion obj) GHC.Base.<> (Data.Aeson..=) "type" (cloneLinodeInstanceRequestBodyType obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CloneLinodeInstanceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CloneLinodeInstanceRequestBody" (\obj -> (((((((GHC.Base.pure CloneLinodeInstanceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "backups_enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "configs")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "linode_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Represents a response of the operation 'cloneLinodeInstance'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CloneLinodeInstanceResponseError' is used.
data CloneLinodeInstanceResponse =                                             
   CloneLinodeInstanceResponseError GHC.Base.String                            -- ^ Means either no matching case available or a parse error
  | CloneLinodeInstanceResponse200 Linode                                      -- ^ Clone started.
  | CloneLinodeInstanceResponseDefault CloneLinodeInstanceResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema CloneLinodeInstanceResponseBodyDefault
-- 
-- 
data CloneLinodeInstanceResponseBodyDefault = CloneLinodeInstanceResponseBodyDefault {
  -- | errors
  cloneLinodeInstanceResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CloneLinodeInstanceResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (cloneLinodeInstanceResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (cloneLinodeInstanceResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON CloneLinodeInstanceResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CloneLinodeInstanceResponseBodyDefault" (\obj -> GHC.Base.pure CloneLinodeInstanceResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))