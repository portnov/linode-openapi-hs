-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation updateNodeBalancerConfig
module Linode.Operations.UpdateNodeBalancerConfig where

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

-- | > PUT /nodebalancers/{nodeBalancerId}/configs/{configId}
-- 
-- Updates the configuration for a single port on a NodeBalancer.
updateNodeBalancerConfig :: forall m . Linode.Common.MonadHTTP m => UpdateNodeBalancerConfigParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> NodeBalancerConfig -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response UpdateNodeBalancerConfigResponse) -- ^ Monadic computation which returns the result of the operation
updateNodeBalancerConfig parameters
                         body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either UpdateNodeBalancerConfigResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> UpdateNodeBalancerConfigResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           NodeBalancerConfig)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> UpdateNodeBalancerConfigResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             UpdateNodeBalancerConfigResponseBodyDefault)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack (("/nodebalancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (updateNodeBalancerConfigParametersPathNodeBalancerId parameters))) GHC.Base.++ "/configs/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (updateNodeBalancerConfigParametersPathConfigId parameters))) GHC.Base.++ ""))) GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/nodebalancers\/{nodeBalancerId}\/configs\/{configId}.PUT.parameters@ in the specification.
-- 
-- 
data UpdateNodeBalancerConfigParameters = UpdateNodeBalancerConfigParameters {
  -- | pathConfigId: Represents the parameter named \'configId\'
  -- 
  -- The ID of the config to access.
  updateNodeBalancerConfigParametersPathConfigId :: GHC.Types.Int
  -- | pathNodeBalancerId: Represents the parameter named \'nodeBalancerId\'
  -- 
  -- The ID of the NodeBalancer to access.
  , updateNodeBalancerConfigParametersPathNodeBalancerId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateNodeBalancerConfigParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathConfigId" Data.Aeson.Types.ToJSON..= updateNodeBalancerConfigParametersPathConfigId obj : "pathNodeBalancerId" Data.Aeson.Types.ToJSON..= updateNodeBalancerConfigParametersPathNodeBalancerId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathConfigId" Data.Aeson.Types.ToJSON..= updateNodeBalancerConfigParametersPathConfigId obj) GHC.Base.<> ("pathNodeBalancerId" Data.Aeson.Types.ToJSON..= updateNodeBalancerConfigParametersPathNodeBalancerId obj))
instance Data.Aeson.Types.FromJSON.FromJSON UpdateNodeBalancerConfigParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateNodeBalancerConfigParameters" (\obj -> (GHC.Base.pure UpdateNodeBalancerConfigParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathConfigId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathNodeBalancerId"))
-- | Create a new 'UpdateNodeBalancerConfigParameters' with all required fields.
mkUpdateNodeBalancerConfigParameters :: GHC.Types.Int -- ^ 'updateNodeBalancerConfigParametersPathConfigId'
  -> GHC.Types.Int -- ^ 'updateNodeBalancerConfigParametersPathNodeBalancerId'
  -> UpdateNodeBalancerConfigParameters
mkUpdateNodeBalancerConfigParameters updateNodeBalancerConfigParametersPathConfigId updateNodeBalancerConfigParametersPathNodeBalancerId = UpdateNodeBalancerConfigParameters{updateNodeBalancerConfigParametersPathConfigId = updateNodeBalancerConfigParametersPathConfigId,
                                                                                                                                                                              updateNodeBalancerConfigParametersPathNodeBalancerId = updateNodeBalancerConfigParametersPathNodeBalancerId}
-- | Represents a response of the operation 'updateNodeBalancerConfig'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'UpdateNodeBalancerConfigResponseError' is used.
data UpdateNodeBalancerConfigResponse =
   UpdateNodeBalancerConfigResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | UpdateNodeBalancerConfigResponse200 NodeBalancerConfig -- ^ Config updated successfully.
  | UpdateNodeBalancerConfigResponseDefault UpdateNodeBalancerConfigResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data UpdateNodeBalancerConfigResponseBodyDefault = UpdateNodeBalancerConfigResponseBodyDefault {
  -- | errors
  updateNodeBalancerConfigResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateNodeBalancerConfigResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= updateNodeBalancerConfigResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= updateNodeBalancerConfigResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON UpdateNodeBalancerConfigResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateNodeBalancerConfigResponseBodyDefault" (\obj -> GHC.Base.pure UpdateNodeBalancerConfigResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'UpdateNodeBalancerConfigResponseBodyDefault' with all required fields.
mkUpdateNodeBalancerConfigResponseBodyDefault :: UpdateNodeBalancerConfigResponseBodyDefault
mkUpdateNodeBalancerConfigResponseBodyDefault = UpdateNodeBalancerConfigResponseBodyDefault{updateNodeBalancerConfigResponseBodyDefaultErrors = GHC.Maybe.Nothing}
