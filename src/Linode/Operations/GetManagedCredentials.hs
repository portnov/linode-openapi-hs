-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getManagedCredentials
module Linode.Operations.GetManagedCredentials where

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

-- | > GET /managed/credentials
-- 
-- Returns a paginated list of Managed Credentials on your Account.
getManagedCredentials :: forall m . Linode.Common.MonadHTTP m => GetManagedCredentialsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetManagedCredentialsResponse) -- ^ Monadic computation which returns the result of the operation
getManagedCredentials parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetManagedCredentialsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetManagedCredentialsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        GetManagedCredentialsResponseBody200)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetManagedCredentialsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          GetManagedCredentialsResponseBodyDefault)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/credentials") [Linode.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getManagedCredentialsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                           Linode.Common.QueryParameter (Data.Text.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getManagedCredentialsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/managed\/credentials.GET.parameters@ in the specification.
-- 
-- 
data GetManagedCredentialsParameters = GetManagedCredentialsParameters {
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- The page of a collection to return.
  -- 
  -- Constraints:
  -- 
  -- * Minimum  of 1.0
  getManagedCredentialsParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage_size: Represents the parameter named \'page_size\'
  -- 
  -- The number of items to return per page.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 25.0
  , getManagedCredentialsParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetManagedCredentialsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= getManagedCredentialsParametersQueryPage obj : "queryPage_size" Data.Aeson.Types.ToJSON..= getManagedCredentialsParametersQueryPageSize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= getManagedCredentialsParametersQueryPage obj) GHC.Base.<> ("queryPage_size" Data.Aeson.Types.ToJSON..= getManagedCredentialsParametersQueryPageSize obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedCredentialsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedCredentialsParameters" (\obj -> (GHC.Base.pure GetManagedCredentialsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage_size"))
-- | Create a new 'GetManagedCredentialsParameters' with all required fields.
mkGetManagedCredentialsParameters :: GetManagedCredentialsParameters
mkGetManagedCredentialsParameters = GetManagedCredentialsParameters{getManagedCredentialsParametersQueryPage = GHC.Maybe.Nothing,
                                                                    getManagedCredentialsParametersQueryPageSize = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getManagedCredentials'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetManagedCredentialsResponseError' is used.
data GetManagedCredentialsResponse =
   GetManagedCredentialsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetManagedCredentialsResponse200 GetManagedCredentialsResponseBody200 -- ^ A paginated list of ManagedCredentials
  | GetManagedCredentialsResponseDefault GetManagedCredentialsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/managed\/credentials.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetManagedCredentialsResponseBody200 = GetManagedCredentialsResponseBody200 {
  -- | data
  getManagedCredentialsResponseBody200Data :: (GHC.Maybe.Maybe ([ManagedCredential]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getManagedCredentialsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getManagedCredentialsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getManagedCredentialsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetManagedCredentialsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getManagedCredentialsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getManagedCredentialsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getManagedCredentialsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getManagedCredentialsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getManagedCredentialsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getManagedCredentialsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getManagedCredentialsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getManagedCredentialsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedCredentialsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedCredentialsResponseBody200" (\obj -> (((GHC.Base.pure GetManagedCredentialsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetManagedCredentialsResponseBody200' with all required fields.
mkGetManagedCredentialsResponseBody200 :: GetManagedCredentialsResponseBody200
mkGetManagedCredentialsResponseBody200 = GetManagedCredentialsResponseBody200{getManagedCredentialsResponseBody200Data = GHC.Maybe.Nothing,
                                                                              getManagedCredentialsResponseBody200Page = GHC.Maybe.Nothing,
                                                                              getManagedCredentialsResponseBody200Pages = GHC.Maybe.Nothing,
                                                                              getManagedCredentialsResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetManagedCredentialsResponseBodyDefault = GetManagedCredentialsResponseBodyDefault {
  -- | errors
  getManagedCredentialsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetManagedCredentialsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getManagedCredentialsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getManagedCredentialsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedCredentialsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedCredentialsResponseBodyDefault" (\obj -> GHC.Base.pure GetManagedCredentialsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetManagedCredentialsResponseBodyDefault' with all required fields.
mkGetManagedCredentialsResponseBodyDefault :: GetManagedCredentialsResponseBodyDefault
mkGetManagedCredentialsResponseBodyDefault = GetManagedCredentialsResponseBodyDefault{getManagedCredentialsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
