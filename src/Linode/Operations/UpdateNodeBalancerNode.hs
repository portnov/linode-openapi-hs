-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation updateNodeBalancerNode
module Linode.Operations.UpdateNodeBalancerNode where

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

-- | > PUT /nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}
-- 
-- Updates information about a Node, a backend for this NodeBalancer\'s configured port.
updateNodeBalancerNode :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> NodeBalancerNode                                                                                                                   -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response UpdateNodeBalancerNodeResponse)) -- ^ Monad containing the result of the operation
updateNodeBalancerNode config
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either UpdateNodeBalancerNodeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> UpdateNodeBalancerNodeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    NodeBalancerNode)
                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> UpdateNodeBalancerNodeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      UpdateNodeBalancerNodeResponseBodyDefault)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > PUT /nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}
-- 
-- The same as 'updateNodeBalancerNode' but returns the raw 'Data.ByteString.Char8.ByteString'
updateNodeBalancerNodeRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                           Linode.Common.SecurityScheme s) =>
                             Linode.Common.Configuration s ->
                             NodeBalancerNode ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
updateNodeBalancerNodeRaw config
                          body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > PUT /nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}
-- 
-- Monadic version of 'updateNodeBalancerNode' (use with 'Linode.Common.runWithConfiguration')
updateNodeBalancerNodeM :: forall m s . (Linode.Common.MonadHTTP m,
                                         Linode.Common.SecurityScheme s) =>
                           NodeBalancerNode ->
                           Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response UpdateNodeBalancerNodeResponse))
updateNodeBalancerNodeM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either UpdateNodeBalancerNodeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> UpdateNodeBalancerNodeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                     NodeBalancerNode)
                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> UpdateNodeBalancerNodeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       UpdateNodeBalancerNodeResponseBodyDefault)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > PUT /nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}
-- 
-- Monadic version of 'updateNodeBalancerNodeRaw' (use with 'Linode.Common.runWithConfiguration')
updateNodeBalancerNodeRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                            Linode.Common.SecurityScheme s) =>
                              NodeBalancerNode ->
                              Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
updateNodeBalancerNodeRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Represents a response of the operation 'updateNodeBalancerNode'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'UpdateNodeBalancerNodeResponseError' is used.
data UpdateNodeBalancerNodeResponse =                                                
   UpdateNodeBalancerNodeResponseError GHC.Base.String                               -- ^ Means either no matching case available or a parse error
  | UpdateNodeBalancerNodeResponse200 NodeBalancerNode                               -- ^ Node updated successfully.
  | UpdateNodeBalancerNodeResponseDefault UpdateNodeBalancerNodeResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema UpdateNodeBalancerNodeResponseBodyDefault
-- 
-- 
data UpdateNodeBalancerNodeResponseBodyDefault = UpdateNodeBalancerNodeResponseBodyDefault {
  -- | errors
  updateNodeBalancerNodeResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON UpdateNodeBalancerNodeResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (updateNodeBalancerNodeResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (updateNodeBalancerNodeResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON UpdateNodeBalancerNodeResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateNodeBalancerNodeResponseBodyDefault" (\obj -> GHC.Base.pure UpdateNodeBalancerNodeResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))