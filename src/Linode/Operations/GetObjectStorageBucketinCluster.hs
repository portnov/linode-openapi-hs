-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getObjectStorageBucketinCluster
module Linode.Operations.GetObjectStorageBucketinCluster where

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

-- | > GET /object-storage/buckets/{clusterId}
-- 
-- Returns a list of Buckets in this cluster belonging to this Account.
-- 
-- 
-- This endpoint is available for convenience. It is recommended that instead you
-- use the more [fully-featured S3 API](https:\/\/docs.ceph.com\/en\/latest\/radosgw\/s3\/bucketops\/\#get-bucket) directly.
getObjectStorageBucketinCluster :: forall m . Linode.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ clusterId: The ID of the cluster this bucket exists in.
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetObjectStorageBucketinClusterResponse) -- ^ Monadic computation which returns the result of the operation
getObjectStorageBucketinCluster clusterId = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetObjectStorageBucketinClusterResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetObjectStorageBucketinClusterResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     GetObjectStorageBucketinClusterResponseBody200)
                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetObjectStorageBucketinClusterResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       GetObjectStorageBucketinClusterResponseBodyDefault)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/object-storage/buckets/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel clusterId)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Represents a response of the operation 'getObjectStorageBucketinCluster'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetObjectStorageBucketinClusterResponseError' is used.
data GetObjectStorageBucketinClusterResponse =
   GetObjectStorageBucketinClusterResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetObjectStorageBucketinClusterResponse200 GetObjectStorageBucketinClusterResponseBody200 -- ^ A paginated list of buckets you own in this cluster.
  | GetObjectStorageBucketinClusterResponseDefault GetObjectStorageBucketinClusterResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/object-storage\/buckets\/{clusterId}.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetObjectStorageBucketinClusterResponseBody200 = GetObjectStorageBucketinClusterResponseBody200 {
  -- | data
  getObjectStorageBucketinClusterResponseBody200Data :: (GHC.Maybe.Maybe ([ObjectStorageBucket]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getObjectStorageBucketinClusterResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getObjectStorageBucketinClusterResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getObjectStorageBucketinClusterResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetObjectStorageBucketinClusterResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getObjectStorageBucketinClusterResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getObjectStorageBucketinClusterResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getObjectStorageBucketinClusterResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getObjectStorageBucketinClusterResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getObjectStorageBucketinClusterResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getObjectStorageBucketinClusterResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getObjectStorageBucketinClusterResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getObjectStorageBucketinClusterResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetObjectStorageBucketinClusterResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetObjectStorageBucketinClusterResponseBody200" (\obj -> (((GHC.Base.pure GetObjectStorageBucketinClusterResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetObjectStorageBucketinClusterResponseBody200' with all required fields.
mkGetObjectStorageBucketinClusterResponseBody200 :: GetObjectStorageBucketinClusterResponseBody200
mkGetObjectStorageBucketinClusterResponseBody200 = GetObjectStorageBucketinClusterResponseBody200{getObjectStorageBucketinClusterResponseBody200Data = GHC.Maybe.Nothing,
                                                                                                  getObjectStorageBucketinClusterResponseBody200Page = GHC.Maybe.Nothing,
                                                                                                  getObjectStorageBucketinClusterResponseBody200Pages = GHC.Maybe.Nothing,
                                                                                                  getObjectStorageBucketinClusterResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetObjectStorageBucketinClusterResponseBodyDefault = GetObjectStorageBucketinClusterResponseBodyDefault {
  -- | errors
  getObjectStorageBucketinClusterResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetObjectStorageBucketinClusterResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getObjectStorageBucketinClusterResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getObjectStorageBucketinClusterResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetObjectStorageBucketinClusterResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetObjectStorageBucketinClusterResponseBodyDefault" (\obj -> GHC.Base.pure GetObjectStorageBucketinClusterResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetObjectStorageBucketinClusterResponseBodyDefault' with all required fields.
mkGetObjectStorageBucketinClusterResponseBodyDefault :: GetObjectStorageBucketinClusterResponseBodyDefault
mkGetObjectStorageBucketinClusterResponseBodyDefault = GetObjectStorageBucketinClusterResponseBodyDefault{getObjectStorageBucketinClusterResponseBodyDefaultErrors = GHC.Maybe.Nothing}
