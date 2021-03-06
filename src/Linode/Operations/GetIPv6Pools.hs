-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getIPv6Pools
module Linode.Operations.GetIPv6Pools where

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

-- | > GET /networking/ipv6/pools
-- 
-- Displays the IPv6 pools on your Account. A pool of IPv6 addresses are routed to all of your Linodes in a single [Region](\/docs\/api\/regions\/\#regions-list). Any Linode on your Account may bring up any address in this pool at any time, with no external configuration required.
getIPv6Pools :: forall m . Linode.Common.MonadHTTP m => GetIPv6PoolsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetIPv6PoolsResponse) -- ^ Monadic computation which returns the result of the operation
getIPv6Pools parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetIPv6PoolsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIPv6PoolsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             GetIPv6PoolsResponseBody200)
                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIPv6PoolsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                               GetIPv6PoolsResponseBodyDefault)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/networking/ipv6/pools") [Linode.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIPv6PoolsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                           Linode.Common.QueryParameter (Data.Text.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIPv6PoolsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/networking\/ipv6\/pools.GET.parameters@ in the specification.
-- 
-- 
data GetIPv6PoolsParameters = GetIPv6PoolsParameters {
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- The page of a collection to return.
  -- 
  -- Constraints:
  -- 
  -- * Minimum  of 1.0
  getIPv6PoolsParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage_size: Represents the parameter named \'page_size\'
  -- 
  -- The number of items to return per page.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 25.0
  , getIPv6PoolsParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIPv6PoolsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= getIPv6PoolsParametersQueryPage obj : "queryPage_size" Data.Aeson.Types.ToJSON..= getIPv6PoolsParametersQueryPageSize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= getIPv6PoolsParametersQueryPage obj) GHC.Base.<> ("queryPage_size" Data.Aeson.Types.ToJSON..= getIPv6PoolsParametersQueryPageSize obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetIPv6PoolsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIPv6PoolsParameters" (\obj -> (GHC.Base.pure GetIPv6PoolsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage_size"))
-- | Create a new 'GetIPv6PoolsParameters' with all required fields.
mkGetIPv6PoolsParameters :: GetIPv6PoolsParameters
mkGetIPv6PoolsParameters = GetIPv6PoolsParameters{getIPv6PoolsParametersQueryPage = GHC.Maybe.Nothing,
                                                  getIPv6PoolsParametersQueryPageSize = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getIPv6Pools'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIPv6PoolsResponseError' is used.
data GetIPv6PoolsResponse =
   GetIPv6PoolsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetIPv6PoolsResponse200 GetIPv6PoolsResponseBody200 -- ^ The IPv6 pools on your Account.
  | GetIPv6PoolsResponseDefault GetIPv6PoolsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/networking\/ipv6\/pools.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetIPv6PoolsResponseBody200 = GetIPv6PoolsResponseBody200 {
  -- | data
  getIPv6PoolsResponseBody200Data :: (GHC.Maybe.Maybe ([IPv6Pool]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getIPv6PoolsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getIPv6PoolsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getIPv6PoolsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIPv6PoolsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getIPv6PoolsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getIPv6PoolsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getIPv6PoolsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getIPv6PoolsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getIPv6PoolsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getIPv6PoolsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getIPv6PoolsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getIPv6PoolsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetIPv6PoolsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIPv6PoolsResponseBody200" (\obj -> (((GHC.Base.pure GetIPv6PoolsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetIPv6PoolsResponseBody200' with all required fields.
mkGetIPv6PoolsResponseBody200 :: GetIPv6PoolsResponseBody200
mkGetIPv6PoolsResponseBody200 = GetIPv6PoolsResponseBody200{getIPv6PoolsResponseBody200Data = GHC.Maybe.Nothing,
                                                            getIPv6PoolsResponseBody200Page = GHC.Maybe.Nothing,
                                                            getIPv6PoolsResponseBody200Pages = GHC.Maybe.Nothing,
                                                            getIPv6PoolsResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetIPv6PoolsResponseBodyDefault = GetIPv6PoolsResponseBodyDefault {
  -- | errors
  getIPv6PoolsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIPv6PoolsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getIPv6PoolsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getIPv6PoolsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetIPv6PoolsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIPv6PoolsResponseBodyDefault" (\obj -> GHC.Base.pure GetIPv6PoolsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetIPv6PoolsResponseBodyDefault' with all required fields.
mkGetIPv6PoolsResponseBodyDefault :: GetIPv6PoolsResponseBodyDefault
mkGetIPv6PoolsResponseBodyDefault = GetIPv6PoolsResponseBodyDefault{getIPv6PoolsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
