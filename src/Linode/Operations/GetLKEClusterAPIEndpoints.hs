-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getLKEClusterAPIEndpoints
module Linode.Operations.GetLKEClusterAPIEndpoints where

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

-- | > GET /lke/clusters/{clusterId}/api-endpoints
-- 
-- List the Kubernetes API server endpoints for this cluster. Please note that it often takes 2-5 minutes before the endpoint is ready after first [creating a new cluster](\/docs\/api\/linode-kubernetes-engine-lke\/\#kubernetes-cluster-create).
getLKEClusterAPIEndpoints :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ clusterId: ID of the Kubernetes cluster to look up.
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetLKEClusterAPIEndpointsResponse) -- ^ Monadic computation which returns the result of the operation
getLKEClusterAPIEndpoints clusterId = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetLKEClusterAPIEndpointsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetLKEClusterAPIEndpointsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                   GetLKEClusterAPIEndpointsResponseBody200)
                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetLKEClusterAPIEndpointsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                     GetLKEClusterAPIEndpointsResponseBodyDefault)
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/lke/clusters/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel clusterId)) GHC.Base.++ "/api-endpoints"))) GHC.Base.mempty)
-- | Represents a response of the operation 'getLKEClusterAPIEndpoints'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetLKEClusterAPIEndpointsResponseError' is used.
data GetLKEClusterAPIEndpointsResponse =
   GetLKEClusterAPIEndpointsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetLKEClusterAPIEndpointsResponse200 GetLKEClusterAPIEndpointsResponseBody200 -- ^ Returns the Kubernetes API server endpoints for this cluster.
  | GetLKEClusterAPIEndpointsResponseDefault GetLKEClusterAPIEndpointsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/lke\/clusters\/{clusterId}\/api-endpoints.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetLKEClusterAPIEndpointsResponseBody200 = GetLKEClusterAPIEndpointsResponseBody200 {
  -- | data
  getLKEClusterAPIEndpointsResponseBody200Data :: (GHC.Maybe.Maybe ([GetLKEClusterAPIEndpointsResponseBody200Data']))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getLKEClusterAPIEndpointsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getLKEClusterAPIEndpointsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getLKEClusterAPIEndpointsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetLKEClusterAPIEndpointsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetLKEClusterAPIEndpointsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetLKEClusterAPIEndpointsResponseBody200" (\obj -> (((GHC.Base.pure GetLKEClusterAPIEndpointsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetLKEClusterAPIEndpointsResponseBody200' with all required fields.
mkGetLKEClusterAPIEndpointsResponseBody200 :: GetLKEClusterAPIEndpointsResponseBody200
mkGetLKEClusterAPIEndpointsResponseBody200 = GetLKEClusterAPIEndpointsResponseBody200{getLKEClusterAPIEndpointsResponseBody200Data = GHC.Maybe.Nothing,
                                                                                      getLKEClusterAPIEndpointsResponseBody200Page = GHC.Maybe.Nothing,
                                                                                      getLKEClusterAPIEndpointsResponseBody200Pages = GHC.Maybe.Nothing,
                                                                                      getLKEClusterAPIEndpointsResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/lke\/clusters\/{clusterId}\/api-endpoints.GET.responses.200.content.application\/json.schema.properties.data.items@ in the specification.
-- 
-- The Kubernetes API server endpoints for this cluster.
data GetLKEClusterAPIEndpointsResponseBody200Data' = GetLKEClusterAPIEndpointsResponseBody200Data' {
  -- | endpoint: A Kubernetes API server endpoint for this cluster.
  getLKEClusterAPIEndpointsResponseBody200Data'Endpoint :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetLKEClusterAPIEndpointsResponseBody200Data'
    where toJSON obj = Data.Aeson.Types.Internal.object ("endpoint" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBody200Data'Endpoint obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("endpoint" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBody200Data'Endpoint obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetLKEClusterAPIEndpointsResponseBody200Data'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetLKEClusterAPIEndpointsResponseBody200Data'" (\obj -> GHC.Base.pure GetLKEClusterAPIEndpointsResponseBody200Data' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "endpoint"))
-- | Create a new 'GetLKEClusterAPIEndpointsResponseBody200Data'' with all required fields.
mkGetLKEClusterAPIEndpointsResponseBody200Data' :: GetLKEClusterAPIEndpointsResponseBody200Data'
mkGetLKEClusterAPIEndpointsResponseBody200Data' = GetLKEClusterAPIEndpointsResponseBody200Data'{getLKEClusterAPIEndpointsResponseBody200Data'Endpoint = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetLKEClusterAPIEndpointsResponseBodyDefault = GetLKEClusterAPIEndpointsResponseBodyDefault {
  -- | errors
  getLKEClusterAPIEndpointsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetLKEClusterAPIEndpointsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getLKEClusterAPIEndpointsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetLKEClusterAPIEndpointsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetLKEClusterAPIEndpointsResponseBodyDefault" (\obj -> GHC.Base.pure GetLKEClusterAPIEndpointsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetLKEClusterAPIEndpointsResponseBodyDefault' with all required fields.
mkGetLKEClusterAPIEndpointsResponseBodyDefault :: GetLKEClusterAPIEndpointsResponseBodyDefault
mkGetLKEClusterAPIEndpointsResponseBodyDefault = GetLKEClusterAPIEndpointsResponseBodyDefault{getLKEClusterAPIEndpointsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
