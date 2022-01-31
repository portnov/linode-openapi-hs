-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation putLKECluster
module Linode.Operations.PutLKECluster where

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

-- | > PUT /lke/clusters/{clusterId}
-- 
-- Updates a Kubernetes cluster.
putLKECluster :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ clusterId: ID of the Kubernetes cluster to look up.
  -> GHC.Maybe.Maybe PutLKEClusterRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response PutLKEClusterResponse) -- ^ Monadic computation which returns the result of the operation
putLKECluster clusterId
              body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PutLKEClusterResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PutLKEClusterResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          PutLKEClusterResponseBody200)
                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/lke/clusters/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel clusterId)) GHC.Base.++ ""))) GHC.Base.mempty body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/lke\/clusters\/{clusterId}.PUT.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PutLKEClusterRequestBody = PutLKEClusterRequestBody {
  -- | control_plane: Defines settings for the Kubernetes Control Plane. Allows for the enabling of High Availability (HA) for Control Plane Components.
  -- 
  -- Enabling High Availability for LKE is an **irreversible** change.
  -- 
  -- When upgrading pre-existing LKE clusters to use the HA Control Plane, the following changes will additionally occur:
  -- 
  -- - All nodes will be deleted and new nodes will be created to replace them.
  -- 
  -- - Any local storage (such as \`hostPath\` volumes) will be erased.
  -- 
  -- - The upgrade process may take several minutes to complete, as nodes will be replaced on a rolling basis.
  putLKEClusterRequestBodyControlPlane :: (GHC.Maybe.Maybe PutLKEClusterRequestBodyControlPlane')
  -- | k8s_version: The desired Kubernetes version for this Kubernetes cluster in the format of &lt;major&gt;.&lt;minor&gt;. New and recycled Nodes in this cluster will be installed with the latest available patch for the Cluster\'s Kubernetes version.
  -- 
  -- When upgrading the Kubernetes version, only the next latest minor version following the current version can be deployed. For example, a cluster with Kubernetes version 1.19 can be upgraded to version 1.20, but not directly to 1.21.
  -- 
  -- The Kubernetes version of a cluster can not be downgraded.
  , putLKEClusterRequestBodyK8sVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | label: This Kubernetes cluster\'s unique label for display purposes only.
  -- Labels have the following constraints:
  -- 
  --   * UTF-8 characters will be returned by the API using escape
  --     sequences of their Unicode code points. For example, the
  --     Japanese character *か* is 3 bytes in UTF-8 (\`0xE382AB\`). Its
  --     Unicode code point is 2 bytes (\`0x30AB\`). APIv4 supports this
  --     character and the API will return it as the escape sequence
  --     using six 1 byte characters which represent 2 bytes of Unicode
  --     code point (\`\"\\u30ab\"\`).
  --   * 4 byte UTF-8 characters are not supported.
  --   * If the label is entirely composed of UTF-8 characters, the API
  --     response will return the code points using up to 193 1 byte
  --     characters.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 32
  -- * Minimum length of 1
  , putLKEClusterRequestBodyLabel :: (GHC.Maybe.Maybe LKEClusterPropertiesLabel)
  -- | tags: An array of tags applied to the Kubernetes cluster. Tags are for organizational purposes only. To delete a tag, exclude it from your \`tags\` array.
  , putLKEClusterRequestBodyTags :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PutLKEClusterRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("control_plane" Data.Aeson.Types.ToJSON..= putLKEClusterRequestBodyControlPlane obj : "k8s_version" Data.Aeson.Types.ToJSON..= putLKEClusterRequestBodyK8sVersion obj : "label" Data.Aeson.Types.ToJSON..= putLKEClusterRequestBodyLabel obj : "tags" Data.Aeson.Types.ToJSON..= putLKEClusterRequestBodyTags obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("control_plane" Data.Aeson.Types.ToJSON..= putLKEClusterRequestBodyControlPlane obj) GHC.Base.<> (("k8s_version" Data.Aeson.Types.ToJSON..= putLKEClusterRequestBodyK8sVersion obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= putLKEClusterRequestBodyLabel obj) GHC.Base.<> ("tags" Data.Aeson.Types.ToJSON..= putLKEClusterRequestBodyTags obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PutLKEClusterRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutLKEClusterRequestBody" (\obj -> (((GHC.Base.pure PutLKEClusterRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "control_plane")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "k8s_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tags"))
-- | Create a new 'PutLKEClusterRequestBody' with all required fields.
mkPutLKEClusterRequestBody :: PutLKEClusterRequestBody
mkPutLKEClusterRequestBody = PutLKEClusterRequestBody{putLKEClusterRequestBodyControlPlane = GHC.Maybe.Nothing,
                                                      putLKEClusterRequestBodyK8sVersion = GHC.Maybe.Nothing,
                                                      putLKEClusterRequestBodyLabel = GHC.Maybe.Nothing,
                                                      putLKEClusterRequestBodyTags = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/lke\/clusters\/{clusterId}.PUT.requestBody.content.application\/json.schema.properties.control_plane@ in the specification.
-- 
-- Defines settings for the Kubernetes Control Plane. Allows for the enabling of High Availability (HA) for Control Plane Components.
-- 
-- Enabling High Availability for LKE is an **irreversible** change.
-- 
-- When upgrading pre-existing LKE clusters to use the HA Control Plane, the following changes will additionally occur:
-- 
-- - All nodes will be deleted and new nodes will be created to replace them.
-- 
-- - Any local storage (such as \`hostPath\` volumes) will be erased.
-- 
-- - The upgrade process may take several minutes to complete, as nodes will be replaced on a rolling basis.
data PutLKEClusterRequestBodyControlPlane' = PutLKEClusterRequestBodyControlPlane' {
  -- | high_availability: Defines whether High Availability is enabled for the Control Plane Components of the cluster. Defaults to \`false\`.
  putLKEClusterRequestBodyControlPlane'HighAvailability :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PutLKEClusterRequestBodyControlPlane'
    where toJSON obj = Data.Aeson.Types.Internal.object ("high_availability" Data.Aeson.Types.ToJSON..= putLKEClusterRequestBodyControlPlane'HighAvailability obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("high_availability" Data.Aeson.Types.ToJSON..= putLKEClusterRequestBodyControlPlane'HighAvailability obj)
instance Data.Aeson.Types.FromJSON.FromJSON PutLKEClusterRequestBodyControlPlane'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutLKEClusterRequestBodyControlPlane'" (\obj -> GHC.Base.pure PutLKEClusterRequestBodyControlPlane' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "high_availability"))
-- | Create a new 'PutLKEClusterRequestBodyControlPlane'' with all required fields.
mkPutLKEClusterRequestBodyControlPlane' :: PutLKEClusterRequestBodyControlPlane'
mkPutLKEClusterRequestBodyControlPlane' = PutLKEClusterRequestBodyControlPlane'{putLKEClusterRequestBodyControlPlane'HighAvailability = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'putLKECluster'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PutLKEClusterResponseError' is used.
data PutLKEClusterResponse =
   PutLKEClusterResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PutLKEClusterResponse200 PutLKEClusterResponseBody200 -- ^ Returns a single Kubernetes cluster.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/lke\/clusters\/{clusterId}.PUT.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PutLKEClusterResponseBody200 = PutLKEClusterResponseBody200 {
  -- | created: When this Kubernetes cluster was created.
  putLKEClusterResponseBody200Created :: (GHC.Maybe.Maybe LKEClusterPropertiesCreated)
  -- | k8s_version: The desired Kubernetes version for this Kubernetes cluster in the format of &lt;major&gt;.&lt;minor&gt;, and the latest supported patch version will be deployed.
  , putLKEClusterResponseBody200K8sVersion :: (GHC.Maybe.Maybe LKEClusterPropertiesK8sVersion)
  -- | label: This Kubernetes cluster\'s unique label for display purposes only.
  -- Labels have the following constraints:
  -- 
  --   * UTF-8 characters will be returned by the API using escape
  --     sequences of their Unicode code points. For example, the
  --     Japanese character *か* is 3 bytes in UTF-8 (\`0xE382AB\`). Its
  --     Unicode code point is 2 bytes (\`0x30AB\`). APIv4 supports this
  --     character and the API will return it as the escape sequence
  --     using six 1 byte characters which represent 2 bytes of Unicode
  --     code point (\`\"\\u30ab\"\`).
  --   * 4 byte UTF-8 characters are not supported.
  --   * If the label is entirely composed of UTF-8 characters, the API
  --     response will return the code points using up to 193 1 byte
  --     characters.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 32
  -- * Minimum length of 1
  , putLKEClusterResponseBody200Label :: (GHC.Maybe.Maybe LKEClusterPropertiesLabel)
  -- | region: This Kubernetes cluster\'s location.
  , putLKEClusterResponseBody200Region :: (GHC.Maybe.Maybe LKEClusterPropertiesRegion)
  -- | tags: An array of tags applied to the Kubernetes cluster. Tags are for organizational purposes only. To delete a tag, exclude it from your \`tags\` array.
  , putLKEClusterResponseBody200Tags :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | updated: When this Kubernetes cluster was updated.
  , putLKEClusterResponseBody200Updated :: (GHC.Maybe.Maybe LKEClusterPropertiesUpdated)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PutLKEClusterResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200Created obj : "k8s_version" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200K8sVersion obj : "label" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200Label obj : "region" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200Region obj : "tags" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200Tags obj : "updated" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200Updated obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200Created obj) GHC.Base.<> (("k8s_version" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200K8sVersion obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200Label obj) GHC.Base.<> (("region" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200Region obj) GHC.Base.<> (("tags" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200Tags obj) GHC.Base.<> ("updated" Data.Aeson.Types.ToJSON..= putLKEClusterResponseBody200Updated obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PutLKEClusterResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutLKEClusterResponseBody200" (\obj -> (((((GHC.Base.pure PutLKEClusterResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "k8s_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tags")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated"))
-- | Create a new 'PutLKEClusterResponseBody200' with all required fields.
mkPutLKEClusterResponseBody200 :: PutLKEClusterResponseBody200
mkPutLKEClusterResponseBody200 = PutLKEClusterResponseBody200{putLKEClusterResponseBody200Created = GHC.Maybe.Nothing,
                                                              putLKEClusterResponseBody200K8sVersion = GHC.Maybe.Nothing,
                                                              putLKEClusterResponseBody200Label = GHC.Maybe.Nothing,
                                                              putLKEClusterResponseBody200Region = GHC.Maybe.Nothing,
                                                              putLKEClusterResponseBody200Tags = GHC.Maybe.Nothing,
                                                              putLKEClusterResponseBody200Updated = GHC.Maybe.Nothing}
