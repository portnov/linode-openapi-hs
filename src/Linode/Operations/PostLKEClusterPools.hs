-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postLKEClusterPools
module Linode.Operations.PostLKEClusterPools where

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
import Linode.ManualTypes

-- | > POST /lke/clusters/{clusterId}/pools
-- 
-- Creates a new Node Pool for the designated Kubernetes cluster.
postLKEClusterPools :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostLKEClusterPoolsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostLKEClusterPoolsResponse)) -- ^ Monad containing the result of the operation
postLKEClusterPools config
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostLKEClusterPoolsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostLKEClusterPoolsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           LKENodePool)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostLKEClusterPoolsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             PostLKEClusterPoolsResponseBodyDefault)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/lke/clusters/{clusterId}/pools") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /lke/clusters/{clusterId}/pools
-- 
-- The same as 'postLKEClusterPools' but returns the raw 'Data.ByteString.Char8.ByteString'
postLKEClusterPoolsRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                        Linode.Common.SecurityScheme s) =>
                          Linode.Common.Configuration s ->
                          PostLKEClusterPoolsRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postLKEClusterPoolsRaw config
                       body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/lke/clusters/{clusterId}/pools") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /lke/clusters/{clusterId}/pools
-- 
-- Monadic version of 'postLKEClusterPools' (use with 'Linode.Common.runWithConfiguration')
postLKEClusterPoolsM :: forall m s . (Linode.Common.MonadHTTP m,
                                      Linode.Common.SecurityScheme s) =>
                        PostLKEClusterPoolsRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostLKEClusterPoolsResponse))
postLKEClusterPoolsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostLKEClusterPoolsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostLKEClusterPoolsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            LKENodePool)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostLKEClusterPoolsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              PostLKEClusterPoolsResponseBodyDefault)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/lke/clusters/{clusterId}/pools") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /lke/clusters/{clusterId}/pools
-- 
-- Monadic version of 'postLKEClusterPoolsRaw' (use with 'Linode.Common.runWithConfiguration')
postLKEClusterPoolsRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                         Linode.Common.SecurityScheme s) =>
                           PostLKEClusterPoolsRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postLKEClusterPoolsRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/lke/clusters/{clusterId}/pools") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema postLKEClusterPoolsRequestBody
-- 
-- 
data PostLKEClusterPoolsRequestBody = PostLKEClusterPoolsRequestBody {
  -- | autoscaler: When enabled, the number of nodes autoscales within the defined minimum and maximum values.
  -- 
  -- When making a request, \`max\` and \`min\` require each other.
  postLKEClusterPoolsRequestBodyAutoscaler :: (GHC.Base.Maybe PostLKEClusterPoolsRequestBodyAutoscaler)
  -- | count
  , postLKEClusterPoolsRequestBodyCount :: (GHC.Base.Maybe LKENodePool_properties_count)
  -- | disks: **Note**: This field should be omitted except for special use cases. The disks specified here are
  -- partitions in *addition* to the primary partition and reduce the size of the primary partition,
  -- which can lead to stability problems for the Node.
  -- 
  -- This Node Pool\'s custom disk layout. Each item in this array will create a new disk
  -- partition for each node in this Node Pool.
  -- 
  --   * The custom disk layout is applied to each node in this Node Pool.
  --   * The maximum number of custom disk partitions that can be configured is 7.
  --   * Once the requested disk paritions are allocated, the remaining disk space is allocated to the node\'s boot disk.
  --   * A Node Pool\'s custom disk layout is immutable over the lifetime of the Node Pool.
  , postLKEClusterPoolsRequestBodyDisks :: (GHC.Base.Maybe ([] LKENodePool_properties_disks_items))
  -- | tags
  , postLKEClusterPoolsRequestBodyTags :: (GHC.Base.Maybe LKENodePool_properties_tags)
  -- | type
  , postLKEClusterPoolsRequestBodyType :: (GHC.Base.Maybe LKENodePool_properties_type)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLKEClusterPoolsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "autoscaler" (postLKEClusterPoolsRequestBodyAutoscaler obj) : (Data.Aeson..=) "count" (postLKEClusterPoolsRequestBodyCount obj) : (Data.Aeson..=) "disks" (postLKEClusterPoolsRequestBodyDisks obj) : (Data.Aeson..=) "tags" (postLKEClusterPoolsRequestBodyTags obj) : (Data.Aeson..=) "type" (postLKEClusterPoolsRequestBodyType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "autoscaler" (postLKEClusterPoolsRequestBodyAutoscaler obj) GHC.Base.<> ((Data.Aeson..=) "count" (postLKEClusterPoolsRequestBodyCount obj) GHC.Base.<> ((Data.Aeson..=) "disks" (postLKEClusterPoolsRequestBodyDisks obj) GHC.Base.<> ((Data.Aeson..=) "tags" (postLKEClusterPoolsRequestBodyTags obj) GHC.Base.<> (Data.Aeson..=) "type" (postLKEClusterPoolsRequestBodyType obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostLKEClusterPoolsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLKEClusterPoolsRequestBody" (\obj -> ((((GHC.Base.pure PostLKEClusterPoolsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "autoscaler")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tags")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Defines the data type for the schema postLKEClusterPoolsRequestBodyAutoscaler
-- 
-- When enabled, the number of nodes autoscales within the defined minimum and maximum values.
-- 
-- When making a request, \`max\` and \`min\` require each other.
data PostLKEClusterPoolsRequestBodyAutoscaler = PostLKEClusterPoolsRequestBodyAutoscaler {
  -- | enabled: Whether autoscaling is enabled for this Node Pool. Defaults to \`false\`.
  postLKEClusterPoolsRequestBodyAutoscalerEnabled :: (GHC.Base.Maybe GHC.Types.Bool)
  -- | max: The maximum number of nodes to autoscale to. Defaults to the Node Pool\'s \`count\`. Defaults to the value provided by the \`count\` field.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 1.0
  , postLKEClusterPoolsRequestBodyAutoscalerMax :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | min: The minimum number of nodes to autoscale to. Defaults to the Node Pool\'s \`count\`.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 1.0
  , postLKEClusterPoolsRequestBodyAutoscalerMin :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLKEClusterPoolsRequestBodyAutoscaler
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "enabled" (postLKEClusterPoolsRequestBodyAutoscalerEnabled obj) : (Data.Aeson..=) "max" (postLKEClusterPoolsRequestBodyAutoscalerMax obj) : (Data.Aeson..=) "min" (postLKEClusterPoolsRequestBodyAutoscalerMin obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "enabled" (postLKEClusterPoolsRequestBodyAutoscalerEnabled obj) GHC.Base.<> ((Data.Aeson..=) "max" (postLKEClusterPoolsRequestBodyAutoscalerMax obj) GHC.Base.<> (Data.Aeson..=) "min" (postLKEClusterPoolsRequestBodyAutoscalerMin obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostLKEClusterPoolsRequestBodyAutoscaler
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLKEClusterPoolsRequestBodyAutoscaler" (\obj -> ((GHC.Base.pure PostLKEClusterPoolsRequestBodyAutoscaler GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "min"))
-- | Represents a response of the operation 'postLKEClusterPools'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostLKEClusterPoolsResponseError' is used.
data PostLKEClusterPoolsResponse =                                             
   PostLKEClusterPoolsResponseError GHC.Base.String                            -- ^ Means either no matching case available or a parse error
  | PostLKEClusterPoolsResponse200 LKENodePool                                 -- ^ Node Pool has been created.
  | PostLKEClusterPoolsResponseDefault PostLKEClusterPoolsResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostLKEClusterPoolsResponseBodyDefault
-- 
-- 
data PostLKEClusterPoolsResponseBodyDefault = PostLKEClusterPoolsResponseBodyDefault {
  -- | errors
  postLKEClusterPoolsResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLKEClusterPoolsResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (postLKEClusterPoolsResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (postLKEClusterPoolsResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLKEClusterPoolsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLKEClusterPoolsResponseBodyDefault" (\obj -> GHC.Base.pure PostLKEClusterPoolsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
