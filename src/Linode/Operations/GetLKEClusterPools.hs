-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getLKEClusterPools
module Linode.Operations.GetLKEClusterPools where

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

-- | > GET /lke/clusters/{clusterId}/pools
-- 
-- Returns all active Node Pools on a Kubernetes cluster.
getLKEClusterPools :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetLKEClusterPoolsResponse)) -- ^ Monad containing the result of the operation
getLKEClusterPools config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetLKEClusterPoolsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetLKEClusterPoolsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          GetLKEClusterPoolsResponseBody200)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetLKEClusterPoolsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            GetLKEClusterPoolsResponseBodyDefault)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/lke/clusters/{clusterId}/pools") [])
-- | > GET /lke/clusters/{clusterId}/pools
-- 
-- The same as 'getLKEClusterPools' but returns the raw 'Data.ByteString.Char8.ByteString'
getLKEClusterPoolsRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                       Linode.Common.SecurityScheme s) =>
                         Linode.Common.Configuration s ->
                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getLKEClusterPoolsRaw config = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/lke/clusters/{clusterId}/pools") [])
-- | > GET /lke/clusters/{clusterId}/pools
-- 
-- Monadic version of 'getLKEClusterPools' (use with 'Linode.Common.runWithConfiguration')
getLKEClusterPoolsM :: forall m s . (Linode.Common.MonadHTTP m,
                                     Linode.Common.SecurityScheme s) =>
                       Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response GetLKEClusterPoolsResponse))
getLKEClusterPoolsM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetLKEClusterPoolsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetLKEClusterPoolsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    GetLKEClusterPoolsResponseBody200)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetLKEClusterPoolsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                      GetLKEClusterPoolsResponseBodyDefault)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/lke/clusters/{clusterId}/pools") [])
-- | > GET /lke/clusters/{clusterId}/pools
-- 
-- Monadic version of 'getLKEClusterPoolsRaw' (use with 'Linode.Common.runWithConfiguration')
getLKEClusterPoolsRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                        Linode.Common.SecurityScheme s) =>
                          Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getLKEClusterPoolsRawM = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/lke/clusters/{clusterId}/pools") [])
-- | Represents a response of the operation 'getLKEClusterPools'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetLKEClusterPoolsResponseError' is used.
data GetLKEClusterPoolsResponse =                                            
   GetLKEClusterPoolsResponseError GHC.Base.String                           -- ^ Means either no matching case available or a parse error
  | GetLKEClusterPoolsResponse200 GetLKEClusterPoolsResponseBody200          -- ^ Returns an array of all Pools in this Kubernetes cluster.
  | GetLKEClusterPoolsResponseDefault GetLKEClusterPoolsResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetLKEClusterPoolsResponseBody200
-- 
-- 
data GetLKEClusterPoolsResponseBody200 = GetLKEClusterPoolsResponseBody200 {
  -- | data
  getLKEClusterPoolsResponseBody200Data :: (GHC.Base.Maybe ([] LKENodePool))
  -- | page
  , getLKEClusterPoolsResponseBody200Page :: (GHC.Base.Maybe PaginationEnvelope_properties_page)
  -- | pages
  , getLKEClusterPoolsResponseBody200Pages :: (GHC.Base.Maybe PaginationEnvelope_properties_pages)
  -- | results
  , getLKEClusterPoolsResponseBody200Results :: (GHC.Base.Maybe PaginationEnvelope_properties_results)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetLKEClusterPoolsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getLKEClusterPoolsResponseBody200Data obj) : (Data.Aeson..=) "page" (getLKEClusterPoolsResponseBody200Page obj) : (Data.Aeson..=) "pages" (getLKEClusterPoolsResponseBody200Pages obj) : (Data.Aeson..=) "results" (getLKEClusterPoolsResponseBody200Results obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getLKEClusterPoolsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "page" (getLKEClusterPoolsResponseBody200Page obj) GHC.Base.<> ((Data.Aeson..=) "pages" (getLKEClusterPoolsResponseBody200Pages obj) GHC.Base.<> (Data.Aeson..=) "results" (getLKEClusterPoolsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetLKEClusterPoolsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetLKEClusterPoolsResponseBody200" (\obj -> (((GHC.Base.pure GetLKEClusterPoolsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Defines the data type for the schema GetLKEClusterPoolsResponseBodyDefault
-- 
-- 
data GetLKEClusterPoolsResponseBodyDefault = GetLKEClusterPoolsResponseBodyDefault {
  -- | errors
  getLKEClusterPoolsResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetLKEClusterPoolsResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (getLKEClusterPoolsResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (getLKEClusterPoolsResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetLKEClusterPoolsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetLKEClusterPoolsResponseBodyDefault" (\obj -> GHC.Base.pure GetLKEClusterPoolsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))