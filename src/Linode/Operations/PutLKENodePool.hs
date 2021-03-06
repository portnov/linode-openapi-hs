-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation putLKENodePool
module Linode.Operations.PutLKENodePool where

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

-- | > PUT /lke/clusters/{clusterId}/pools/{poolId}
-- 
-- Updates a Node Pool\'s count.
-- 
-- Linodes will be created or deleted to match changes to the Node Pool\'s count.
-- 
-- **Any local storage on deleted Linodes (such as \"hostPath\" and \"emptyDir\" volumes, or \"local\" PersistentVolumes) will be erased.**
putLKENodePool :: forall m . Linode.Common.MonadHTTP m => PutLKENodePoolParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> GHC.Maybe.Maybe PutLKENodePoolRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response PutLKENodePoolResponse) -- ^ Monadic computation which returns the result of the operation
putLKENodePool parameters
               body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PutLKENodePoolResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PutLKENodePoolResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             LKENodePool)
                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/lke/clusters/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (putLKENodePoolParametersPathClusterId parameters))) GHC.Base.++ ("/pools/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (putLKENodePoolParametersPathPoolId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/lke\/clusters\/{clusterId}\/pools\/{poolId}.PUT.parameters@ in the specification.
-- 
-- 
data PutLKENodePoolParameters = PutLKENodePoolParameters {
  -- | pathClusterId: Represents the parameter named \'clusterId\'
  -- 
  -- ID of the Kubernetes cluster to look up.
  putLKENodePoolParametersPathClusterId :: GHC.Types.Int
  -- | pathPoolId: Represents the parameter named \'poolId\'
  -- 
  -- ID of the Pool to look up
  , putLKENodePoolParametersPathPoolId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PutLKENodePoolParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathClusterId" Data.Aeson.Types.ToJSON..= putLKENodePoolParametersPathClusterId obj : "pathPoolId" Data.Aeson.Types.ToJSON..= putLKENodePoolParametersPathPoolId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathClusterId" Data.Aeson.Types.ToJSON..= putLKENodePoolParametersPathClusterId obj) GHC.Base.<> ("pathPoolId" Data.Aeson.Types.ToJSON..= putLKENodePoolParametersPathPoolId obj))
instance Data.Aeson.Types.FromJSON.FromJSON PutLKENodePoolParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutLKENodePoolParameters" (\obj -> (GHC.Base.pure PutLKENodePoolParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathClusterId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathPoolId"))
-- | Create a new 'PutLKENodePoolParameters' with all required fields.
mkPutLKENodePoolParameters :: GHC.Types.Int -- ^ 'putLKENodePoolParametersPathClusterId'
  -> GHC.Types.Int -- ^ 'putLKENodePoolParametersPathPoolId'
  -> PutLKENodePoolParameters
mkPutLKENodePoolParameters putLKENodePoolParametersPathClusterId putLKENodePoolParametersPathPoolId = PutLKENodePoolParameters{putLKENodePoolParametersPathClusterId = putLKENodePoolParametersPathClusterId,
                                                                                                                               putLKENodePoolParametersPathPoolId = putLKENodePoolParametersPathPoolId}
-- | Defines the object schema located at @paths.\/lke\/clusters\/{clusterId}\/pools\/{poolId}.PUT.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PutLKENodePoolRequestBody = PutLKENodePoolRequestBody {
  -- | count
  putLKENodePoolRequestBodyCount :: (GHC.Maybe.Maybe LKENodePoolRequestBodyPropertiesCount)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PutLKENodePoolRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("count" Data.Aeson.Types.ToJSON..= putLKENodePoolRequestBodyCount obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("count" Data.Aeson.Types.ToJSON..= putLKENodePoolRequestBodyCount obj)
instance Data.Aeson.Types.FromJSON.FromJSON PutLKENodePoolRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutLKENodePoolRequestBody" (\obj -> GHC.Base.pure PutLKENodePoolRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "count"))
-- | Create a new 'PutLKENodePoolRequestBody' with all required fields.
mkPutLKENodePoolRequestBody :: PutLKENodePoolRequestBody
mkPutLKENodePoolRequestBody = PutLKENodePoolRequestBody{putLKENodePoolRequestBodyCount = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'putLKENodePool'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PutLKENodePoolResponseError' is used.
data PutLKENodePoolResponse =
   PutLKENodePoolResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PutLKENodePoolResponse200 LKENodePool -- ^ Node Pool was successfully modified.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
