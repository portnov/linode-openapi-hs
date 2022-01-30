-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteNodeBalancerConfigNode
module Linode.Operations.DeleteNodeBalancerConfigNode where

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

-- | > DELETE /nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}
-- 
-- Deletes a Node from this Config. This backend will no longer receive traffic for the configured port of this NodeBalancer.
-- 
-- This does not change or remove the Linode whose address was used in the creation of this Node.
deleteNodeBalancerConfigNode :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteNodeBalancerConfigNodeResponse)) -- ^ Monad containing the result of the operation
deleteNodeBalancerConfigNode config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteNodeBalancerConfigNodeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteNodeBalancerConfigNodeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        DeleteNodeBalancerConfigNodeResponseBody200)
                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteNodeBalancerConfigNodeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          DeleteNodeBalancerConfigNodeResponseBodyDefault)
                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}") [])
-- | > DELETE /nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}
-- 
-- The same as 'deleteNodeBalancerConfigNode' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteNodeBalancerConfigNodeRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                                 Linode.Common.SecurityScheme s) =>
                                   Linode.Common.Configuration s ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteNodeBalancerConfigNodeRaw config = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}") [])
-- | > DELETE /nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}
-- 
-- Monadic version of 'deleteNodeBalancerConfigNode' (use with 'Linode.Common.runWithConfiguration')
deleteNodeBalancerConfigNodeM :: forall m s . (Linode.Common.MonadHTTP m,
                                               Linode.Common.SecurityScheme s) =>
                                 Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response DeleteNodeBalancerConfigNodeResponse))
deleteNodeBalancerConfigNodeM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteNodeBalancerConfigNodeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteNodeBalancerConfigNodeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  DeleteNodeBalancerConfigNodeResponseBody200)
                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteNodeBalancerConfigNodeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    DeleteNodeBalancerConfigNodeResponseBodyDefault)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}") [])
-- | > DELETE /nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}
-- 
-- Monadic version of 'deleteNodeBalancerConfigNodeRaw' (use with 'Linode.Common.runWithConfiguration')
deleteNodeBalancerConfigNodeRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                                  Linode.Common.SecurityScheme s) =>
                                    Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteNodeBalancerConfigNodeRawM = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/nodebalancers/{nodeBalancerId}/configs/{configId}/nodes/{nodeId}") [])
-- | Represents a response of the operation 'deleteNodeBalancerConfigNode'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteNodeBalancerConfigNodeResponseError' is used.
data DeleteNodeBalancerConfigNodeResponse =                                                      
   DeleteNodeBalancerConfigNodeResponseError GHC.Base.String                                     -- ^ Means either no matching case available or a parse error
  | DeleteNodeBalancerConfigNodeResponse200 DeleteNodeBalancerConfigNodeResponseBody200          -- ^ Node deleted successfully.
  | DeleteNodeBalancerConfigNodeResponseDefault DeleteNodeBalancerConfigNodeResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema DeleteNodeBalancerConfigNodeResponseBody200
-- 
-- 
data DeleteNodeBalancerConfigNodeResponseBody200 = DeleteNodeBalancerConfigNodeResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteNodeBalancerConfigNodeResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteNodeBalancerConfigNodeResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteNodeBalancerConfigNodeResponseBody200" (\obj -> GHC.Base.pure DeleteNodeBalancerConfigNodeResponseBody200)
-- | Defines the data type for the schema DeleteNodeBalancerConfigNodeResponseBodyDefault
-- 
-- 
data DeleteNodeBalancerConfigNodeResponseBodyDefault = DeleteNodeBalancerConfigNodeResponseBodyDefault {
  -- | errors
  deleteNodeBalancerConfigNodeResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteNodeBalancerConfigNodeResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (deleteNodeBalancerConfigNodeResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (deleteNodeBalancerConfigNodeResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteNodeBalancerConfigNodeResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteNodeBalancerConfigNodeResponseBodyDefault" (\obj -> GHC.Base.pure DeleteNodeBalancerConfigNodeResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
