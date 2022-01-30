-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteLKECluster
module Linode.Operations.DeleteLKECluster where

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

-- | > DELETE /lke/clusters/{clusterId}
-- 
-- Deletes a Cluster you have permission to \`read_write\`.
-- 
-- **Deleting a Cluster is a destructive action and cannot be undone.**
-- 
-- Deleting a Cluster:
--   - Deletes all Linodes in all pools within this Kubernetes cluster
--   - Deletes all supporting Kubernetes services for this Kubernetes
--     cluster (API server, etcd, etc)
--   - Deletes all NodeBalancers created by this Kubernetes cluster
--   - Does not delete any of the volumes created by this Kubernetes
--     cluster
deleteLKECluster :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteLKEClusterResponse)) -- ^ Monad containing the result of the operation
deleteLKECluster config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteLKEClusterResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteLKEClusterResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    DeleteLKEClusterResponseBody200)
                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteLKEClusterResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                      DeleteLKEClusterResponseBodyDefault)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/lke/clusters/{clusterId}") [])
-- | > DELETE /lke/clusters/{clusterId}
-- 
-- The same as 'deleteLKECluster' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteLKEClusterRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                     Linode.Common.SecurityScheme s) =>
                       Linode.Common.Configuration s ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteLKEClusterRaw config = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/lke/clusters/{clusterId}") [])
-- | > DELETE /lke/clusters/{clusterId}
-- 
-- Monadic version of 'deleteLKECluster' (use with 'Linode.Common.runWithConfiguration')
deleteLKEClusterM :: forall m s . (Linode.Common.MonadHTTP m,
                                   Linode.Common.SecurityScheme s) =>
                     Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response DeleteLKEClusterResponse))
deleteLKEClusterM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteLKEClusterResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteLKEClusterResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              DeleteLKEClusterResponseBody200)
                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteLKEClusterResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                DeleteLKEClusterResponseBodyDefault)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/lke/clusters/{clusterId}") [])
-- | > DELETE /lke/clusters/{clusterId}
-- 
-- Monadic version of 'deleteLKEClusterRaw' (use with 'Linode.Common.runWithConfiguration')
deleteLKEClusterRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                      Linode.Common.SecurityScheme s) =>
                        Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteLKEClusterRawM = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/lke/clusters/{clusterId}") [])
-- | Represents a response of the operation 'deleteLKECluster'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteLKEClusterResponseError' is used.
data DeleteLKEClusterResponse =                                          
   DeleteLKEClusterResponseError GHC.Base.String                         -- ^ Means either no matching case available or a parse error
  | DeleteLKEClusterResponse200 DeleteLKEClusterResponseBody200          -- ^ Delete successful
  | DeleteLKEClusterResponseDefault DeleteLKEClusterResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema DeleteLKEClusterResponseBody200
-- 
-- 
data DeleteLKEClusterResponseBody200 = DeleteLKEClusterResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteLKEClusterResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteLKEClusterResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteLKEClusterResponseBody200" (\obj -> GHC.Base.pure DeleteLKEClusterResponseBody200)
-- | Defines the data type for the schema DeleteLKEClusterResponseBodyDefault
-- 
-- 
data DeleteLKEClusterResponseBodyDefault = DeleteLKEClusterResponseBodyDefault {
  -- | errors
  deleteLKEClusterResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteLKEClusterResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (deleteLKEClusterResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (deleteLKEClusterResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteLKEClusterResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteLKEClusterResponseBodyDefault" (\obj -> GHC.Base.pure DeleteLKEClusterResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))