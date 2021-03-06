-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getManagedContacts
module Linode.Operations.GetManagedContacts where

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

-- | > GET /managed/contacts
-- 
-- Returns a paginated list of Managed Contacts on your Account.
getManagedContacts :: forall m . Linode.Common.MonadHTTP m => GetManagedContactsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetManagedContactsResponse) -- ^ Monadic computation which returns the result of the operation
getManagedContacts parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetManagedContactsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetManagedContactsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               GetManagedContactsResponseBody200)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetManagedContactsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 GetManagedContactsResponseBodyDefault)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/contacts") [Linode.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getManagedContactsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                  Linode.Common.QueryParameter (Data.Text.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getManagedContactsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/managed\/contacts.GET.parameters@ in the specification.
-- 
-- 
data GetManagedContactsParameters = GetManagedContactsParameters {
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- The page of a collection to return.
  -- 
  -- Constraints:
  -- 
  -- * Minimum  of 1.0
  getManagedContactsParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage_size: Represents the parameter named \'page_size\'
  -- 
  -- The number of items to return per page.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 25.0
  , getManagedContactsParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetManagedContactsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= getManagedContactsParametersQueryPage obj : "queryPage_size" Data.Aeson.Types.ToJSON..= getManagedContactsParametersQueryPageSize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= getManagedContactsParametersQueryPage obj) GHC.Base.<> ("queryPage_size" Data.Aeson.Types.ToJSON..= getManagedContactsParametersQueryPageSize obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedContactsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedContactsParameters" (\obj -> (GHC.Base.pure GetManagedContactsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage_size"))
-- | Create a new 'GetManagedContactsParameters' with all required fields.
mkGetManagedContactsParameters :: GetManagedContactsParameters
mkGetManagedContactsParameters = GetManagedContactsParameters{getManagedContactsParametersQueryPage = GHC.Maybe.Nothing,
                                                              getManagedContactsParametersQueryPageSize = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getManagedContacts'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetManagedContactsResponseError' is used.
data GetManagedContactsResponse =
   GetManagedContactsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetManagedContactsResponse200 GetManagedContactsResponseBody200 -- ^ A paginated list of ManagedContacts
  | GetManagedContactsResponseDefault GetManagedContactsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/managed\/contacts.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetManagedContactsResponseBody200 = GetManagedContactsResponseBody200 {
  -- | data
  getManagedContactsResponseBody200Data :: (GHC.Maybe.Maybe ([ManagedContact]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getManagedContactsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getManagedContactsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getManagedContactsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetManagedContactsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getManagedContactsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getManagedContactsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getManagedContactsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getManagedContactsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getManagedContactsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getManagedContactsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getManagedContactsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getManagedContactsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedContactsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedContactsResponseBody200" (\obj -> (((GHC.Base.pure GetManagedContactsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetManagedContactsResponseBody200' with all required fields.
mkGetManagedContactsResponseBody200 :: GetManagedContactsResponseBody200
mkGetManagedContactsResponseBody200 = GetManagedContactsResponseBody200{getManagedContactsResponseBody200Data = GHC.Maybe.Nothing,
                                                                        getManagedContactsResponseBody200Page = GHC.Maybe.Nothing,
                                                                        getManagedContactsResponseBody200Pages = GHC.Maybe.Nothing,
                                                                        getManagedContactsResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetManagedContactsResponseBodyDefault = GetManagedContactsResponseBodyDefault {
  -- | errors
  getManagedContactsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetManagedContactsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getManagedContactsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getManagedContactsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedContactsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedContactsResponseBodyDefault" (\obj -> GHC.Base.pure GetManagedContactsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetManagedContactsResponseBodyDefault' with all required fields.
mkGetManagedContactsResponseBodyDefault :: GetManagedContactsResponseBodyDefault
mkGetManagedContactsResponseBodyDefault = GetManagedContactsResponseBodyDefault{getManagedContactsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
