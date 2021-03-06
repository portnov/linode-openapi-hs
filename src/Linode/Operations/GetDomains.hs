-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getDomains
module Linode.Operations.GetDomains where

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

-- | > GET /domains
-- 
-- This is a collection of Domains that you have registered in Linode\'s DNS Manager.  Linode is not a registrar, and in order for these to work you must own the domains and point your registrar at Linode\'s nameservers.
getDomains :: forall m . Linode.Common.MonadHTTP m => GetDomainsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetDomainsResponse) -- ^ Monadic computation which returns the result of the operation
getDomains parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetDomainsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetDomainsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       GetDomainsResponseBody200)
                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetDomainsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         GetDomainsResponseBodyDefault)
                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/domains") [Linode.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDomainsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                         Linode.Common.QueryParameter (Data.Text.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDomainsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/domains.GET.parameters@ in the specification.
-- 
-- 
data GetDomainsParameters = GetDomainsParameters {
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- The page of a collection to return.
  -- 
  -- Constraints:
  -- 
  -- * Minimum  of 1.0
  getDomainsParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage_size: Represents the parameter named \'page_size\'
  -- 
  -- The number of items to return per page.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 25.0
  , getDomainsParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetDomainsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= getDomainsParametersQueryPage obj : "queryPage_size" Data.Aeson.Types.ToJSON..= getDomainsParametersQueryPageSize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= getDomainsParametersQueryPage obj) GHC.Base.<> ("queryPage_size" Data.Aeson.Types.ToJSON..= getDomainsParametersQueryPageSize obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetDomainsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetDomainsParameters" (\obj -> (GHC.Base.pure GetDomainsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage_size"))
-- | Create a new 'GetDomainsParameters' with all required fields.
mkGetDomainsParameters :: GetDomainsParameters
mkGetDomainsParameters = GetDomainsParameters{getDomainsParametersQueryPage = GHC.Maybe.Nothing,
                                              getDomainsParametersQueryPageSize = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getDomains'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetDomainsResponseError' is used.
data GetDomainsResponse =
   GetDomainsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetDomainsResponse200 GetDomainsResponseBody200 -- ^ A paginated list of Domains you have registered.
  | GetDomainsResponseDefault GetDomainsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/domains.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetDomainsResponseBody200 = GetDomainsResponseBody200 {
  -- | data
  getDomainsResponseBody200Data :: (GHC.Maybe.Maybe ([Domain]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getDomainsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getDomainsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getDomainsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetDomainsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getDomainsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getDomainsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getDomainsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getDomainsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getDomainsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getDomainsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getDomainsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getDomainsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetDomainsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetDomainsResponseBody200" (\obj -> (((GHC.Base.pure GetDomainsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetDomainsResponseBody200' with all required fields.
mkGetDomainsResponseBody200 :: GetDomainsResponseBody200
mkGetDomainsResponseBody200 = GetDomainsResponseBody200{getDomainsResponseBody200Data = GHC.Maybe.Nothing,
                                                        getDomainsResponseBody200Page = GHC.Maybe.Nothing,
                                                        getDomainsResponseBody200Pages = GHC.Maybe.Nothing,
                                                        getDomainsResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetDomainsResponseBodyDefault = GetDomainsResponseBodyDefault {
  -- | errors
  getDomainsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetDomainsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getDomainsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getDomainsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetDomainsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetDomainsResponseBodyDefault" (\obj -> GHC.Base.pure GetDomainsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetDomainsResponseBodyDefault' with all required fields.
mkGetDomainsResponseBodyDefault :: GetDomainsResponseBodyDefault
mkGetDomainsResponseBodyDefault = GetDomainsResponseBodyDefault{getDomainsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
