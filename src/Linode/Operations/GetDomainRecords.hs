-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getDomainRecords
module Linode.Operations.GetDomainRecords where

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

-- | > GET /domains/{domainId}/records
-- 
-- Returns a paginated list of Records configured on a Domain in Linode\'s
-- DNS Manager.
getDomainRecords :: forall m . Linode.Common.MonadHTTP m => GetDomainRecordsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetDomainRecordsResponse) -- ^ Monadic computation which returns the result of the operation
getDomainRecords parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetDomainRecordsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetDomainRecordsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         GetDomainRecordsResponseBody200)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/domains/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (getDomainRecordsParametersPathDomainId parameters))) GHC.Base.++ "/records"))) [Linode.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDomainRecordsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Linode.Common.QueryParameter (Data.Text.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getDomainRecordsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/domains\/{domainId}\/records.GET.parameters@ in the specification.
-- 
-- 
data GetDomainRecordsParameters = GetDomainRecordsParameters {
  -- | pathDomainId: Represents the parameter named \'domainId\'
  -- 
  -- The ID of the Domain we are accessing Records for.
  getDomainRecordsParametersPathDomainId :: GHC.Types.Int
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- The page of a collection to return.
  -- 
  -- Constraints:
  -- 
  -- * Minimum  of 1.0
  , getDomainRecordsParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage_size: Represents the parameter named \'page_size\'
  -- 
  -- The number of items to return per page.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 25.0
  , getDomainRecordsParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetDomainRecordsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathDomainId" Data.Aeson.Types.ToJSON..= getDomainRecordsParametersPathDomainId obj : "queryPage" Data.Aeson.Types.ToJSON..= getDomainRecordsParametersQueryPage obj : "queryPage_size" Data.Aeson.Types.ToJSON..= getDomainRecordsParametersQueryPageSize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathDomainId" Data.Aeson.Types.ToJSON..= getDomainRecordsParametersPathDomainId obj) GHC.Base.<> (("queryPage" Data.Aeson.Types.ToJSON..= getDomainRecordsParametersQueryPage obj) GHC.Base.<> ("queryPage_size" Data.Aeson.Types.ToJSON..= getDomainRecordsParametersQueryPageSize obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetDomainRecordsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetDomainRecordsParameters" (\obj -> ((GHC.Base.pure GetDomainRecordsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDomainId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage_size"))
-- | Create a new 'GetDomainRecordsParameters' with all required fields.
mkGetDomainRecordsParameters :: GHC.Types.Int -- ^ 'getDomainRecordsParametersPathDomainId'
  -> GetDomainRecordsParameters
mkGetDomainRecordsParameters getDomainRecordsParametersPathDomainId = GetDomainRecordsParameters{getDomainRecordsParametersPathDomainId = getDomainRecordsParametersPathDomainId,
                                                                                                 getDomainRecordsParametersQueryPage = GHC.Maybe.Nothing,
                                                                                                 getDomainRecordsParametersQueryPageSize = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getDomainRecords'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetDomainRecordsResponseError' is used.
data GetDomainRecordsResponse =
   GetDomainRecordsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetDomainRecordsResponse200 GetDomainRecordsResponseBody200 -- ^ A list of Domain Records.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/domains\/{domainId}\/records.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetDomainRecordsResponseBody200 = GetDomainRecordsResponseBody200 {
  -- | data
  getDomainRecordsResponseBody200Data :: (GHC.Maybe.Maybe ([DomainRecord]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getDomainRecordsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getDomainRecordsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getDomainRecordsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetDomainRecordsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getDomainRecordsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getDomainRecordsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getDomainRecordsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getDomainRecordsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getDomainRecordsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getDomainRecordsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getDomainRecordsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getDomainRecordsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetDomainRecordsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetDomainRecordsResponseBody200" (\obj -> (((GHC.Base.pure GetDomainRecordsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetDomainRecordsResponseBody200' with all required fields.
mkGetDomainRecordsResponseBody200 :: GetDomainRecordsResponseBody200
mkGetDomainRecordsResponseBody200 = GetDomainRecordsResponseBody200{getDomainRecordsResponseBody200Data = GHC.Maybe.Nothing,
                                                                    getDomainRecordsResponseBody200Page = GHC.Maybe.Nothing,
                                                                    getDomainRecordsResponseBody200Pages = GHC.Maybe.Nothing,
                                                                    getDomainRecordsResponseBody200Results = GHC.Maybe.Nothing}
