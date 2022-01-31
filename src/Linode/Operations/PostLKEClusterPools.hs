-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postLKEClusterPools
module Linode.Operations.PostLKEClusterPools where

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

-- | > POST /lke/clusters/{clusterId}/pools
-- 
-- Creates a new Node Pool for the designated Kubernetes cluster.
postLKEClusterPools :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ clusterId: ID of the Kubernetes cluster to look up.
  -> PostLKEClusterPoolsRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response PostLKEClusterPoolsResponse) -- ^ Monadic computation which returns the result of the operation
postLKEClusterPools clusterId
                    body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostLKEClusterPoolsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostLKEClusterPoolsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            LKENodePool)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostLKEClusterPoolsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              PostLKEClusterPoolsResponseBodyDefault)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/lke/clusters/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel clusterId)) GHC.Base.++ "/pools"))) GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/lke\/clusters\/{clusterId}\/pools.POST.requestBody.content.application\/json.schema.allOf@ in the specification.
-- 
-- 
data PostLKEClusterPoolsRequestBody = PostLKEClusterPoolsRequestBody {
  -- | autoscaler: When enabled, the number of nodes autoscales within the defined minimum and maximum values.
  -- 
  -- When making a request, \`max\` and \`min\` require each other.
  postLKEClusterPoolsRequestBodyAutoscaler :: (GHC.Maybe.Maybe PostLKEClusterPoolsRequestBodyAutoscaler')
  -- | count: The number of nodes in the Node Pool.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 1.0
  , postLKEClusterPoolsRequestBodyCount :: (GHC.Maybe.Maybe LKENodePoolPropertiesCount)
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
  , postLKEClusterPoolsRequestBodyDisks :: (GHC.Maybe.Maybe ([LKENodePoolPropertiesDisksItems]))
  -- | tags: An array of tags applied to this object. Tags are for organizational purposes only.
  , postLKEClusterPoolsRequestBodyTags :: (GHC.Maybe.Maybe LKENodePoolPropertiesTags)
  -- | type: The Linode Type for all of the nodes in the Node Pool.
  , postLKEClusterPoolsRequestBodyType :: (GHC.Maybe.Maybe LKENodePoolPropertiesType)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostLKEClusterPoolsRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("autoscaler" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyAutoscaler obj : "count" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyCount obj : "disks" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyDisks obj : "tags" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyTags obj : "type" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("autoscaler" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyAutoscaler obj) GHC.Base.<> (("count" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyCount obj) GHC.Base.<> (("disks" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyDisks obj) GHC.Base.<> (("tags" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyTags obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyType obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostLKEClusterPoolsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLKEClusterPoolsRequestBody" (\obj -> ((((GHC.Base.pure PostLKEClusterPoolsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "autoscaler")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tags")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Create a new 'PostLKEClusterPoolsRequestBody' with all required fields.
mkPostLKEClusterPoolsRequestBody :: PostLKEClusterPoolsRequestBody
mkPostLKEClusterPoolsRequestBody = PostLKEClusterPoolsRequestBody{postLKEClusterPoolsRequestBodyAutoscaler = GHC.Maybe.Nothing,
                                                                  postLKEClusterPoolsRequestBodyCount = GHC.Maybe.Nothing,
                                                                  postLKEClusterPoolsRequestBodyDisks = GHC.Maybe.Nothing,
                                                                  postLKEClusterPoolsRequestBodyTags = GHC.Maybe.Nothing,
                                                                  postLKEClusterPoolsRequestBodyType = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/lke\/clusters\/{clusterId}\/pools.POST.requestBody.content.application\/json.schema.allOf.properties.autoscaler@ in the specification.
-- 
-- When enabled, the number of nodes autoscales within the defined minimum and maximum values.
-- 
-- When making a request, \`max\` and \`min\` require each other.
data PostLKEClusterPoolsRequestBodyAutoscaler' = PostLKEClusterPoolsRequestBodyAutoscaler' {
  -- | enabled: Whether autoscaling is enabled for this Node Pool. Defaults to \`false\`.
  postLKEClusterPoolsRequestBodyAutoscaler'Enabled :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | max: The maximum number of nodes to autoscale to. Defaults to the Node Pool\'s \`count\`. Defaults to the value provided by the \`count\` field.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 1.0
  , postLKEClusterPoolsRequestBodyAutoscaler'Max :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | min: The minimum number of nodes to autoscale to. Defaults to the Node Pool\'s \`count\`.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 1.0
  , postLKEClusterPoolsRequestBodyAutoscaler'Min :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostLKEClusterPoolsRequestBodyAutoscaler'
    where toJSON obj = Data.Aeson.Types.Internal.object ("enabled" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyAutoscaler'Enabled obj : "max" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyAutoscaler'Max obj : "min" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyAutoscaler'Min obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("enabled" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyAutoscaler'Enabled obj) GHC.Base.<> (("max" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyAutoscaler'Max obj) GHC.Base.<> ("min" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsRequestBodyAutoscaler'Min obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostLKEClusterPoolsRequestBodyAutoscaler'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLKEClusterPoolsRequestBodyAutoscaler'" (\obj -> ((GHC.Base.pure PostLKEClusterPoolsRequestBodyAutoscaler' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "min"))
-- | Create a new 'PostLKEClusterPoolsRequestBodyAutoscaler'' with all required fields.
mkPostLKEClusterPoolsRequestBodyAutoscaler' :: PostLKEClusterPoolsRequestBodyAutoscaler'
mkPostLKEClusterPoolsRequestBodyAutoscaler' = PostLKEClusterPoolsRequestBodyAutoscaler'{postLKEClusterPoolsRequestBodyAutoscaler'Enabled = GHC.Maybe.Nothing,
                                                                                        postLKEClusterPoolsRequestBodyAutoscaler'Max = GHC.Maybe.Nothing,
                                                                                        postLKEClusterPoolsRequestBodyAutoscaler'Min = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postLKEClusterPools'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostLKEClusterPoolsResponseError' is used.
data PostLKEClusterPoolsResponse =
   PostLKEClusterPoolsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostLKEClusterPoolsResponse200 LKENodePool -- ^ Node Pool has been created.
  | PostLKEClusterPoolsResponseDefault PostLKEClusterPoolsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data PostLKEClusterPoolsResponseBodyDefault = PostLKEClusterPoolsResponseBodyDefault {
  -- | errors
  postLKEClusterPoolsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostLKEClusterPoolsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= postLKEClusterPoolsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostLKEClusterPoolsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLKEClusterPoolsResponseBodyDefault" (\obj -> GHC.Base.pure PostLKEClusterPoolsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'PostLKEClusterPoolsResponseBodyDefault' with all required fields.
mkPostLKEClusterPoolsResponseBodyDefault :: PostLKEClusterPoolsResponseBodyDefault
mkPostLKEClusterPoolsResponseBodyDefault = PostLKEClusterPoolsResponseBodyDefault{postLKEClusterPoolsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
