-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getManagedLinodeSettings
module Linode.Operations.GetManagedLinodeSettings where

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

-- | > GET /managed/linode-settings
-- 
-- Returns a paginated list of Managed Settings for your Linodes. There will be one entry per Linode on your Account.
getManagedLinodeSettings :: forall m . Linode.Common.MonadHTTP m => GetManagedLinodeSettingsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetManagedLinodeSettingsResponse) -- ^ Monadic computation which returns the result of the operation
getManagedLinodeSettings parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetManagedLinodeSettingsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetManagedLinodeSettingsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 GetManagedLinodeSettingsResponseBody200)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetManagedLinodeSettingsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   GetManagedLinodeSettingsResponseBodyDefault)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/linode-settings") [Linode.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getManagedLinodeSettingsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                                                     Linode.Common.QueryParameter (Data.Text.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getManagedLinodeSettingsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/managed\/linode-settings.GET.parameters@ in the specification.
-- 
-- 
data GetManagedLinodeSettingsParameters = GetManagedLinodeSettingsParameters {
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- The page of a collection to return.
  -- 
  -- Constraints:
  -- 
  -- * Minimum  of 1.0
  getManagedLinodeSettingsParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage_size: Represents the parameter named \'page_size\'
  -- 
  -- The number of items to return per page.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 25.0
  , getManagedLinodeSettingsParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetManagedLinodeSettingsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsParametersQueryPage obj : "queryPage_size" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsParametersQueryPageSize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsParametersQueryPage obj) GHC.Base.<> ("queryPage_size" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsParametersQueryPageSize obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedLinodeSettingsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedLinodeSettingsParameters" (\obj -> (GHC.Base.pure GetManagedLinodeSettingsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage_size"))
-- | Create a new 'GetManagedLinodeSettingsParameters' with all required fields.
mkGetManagedLinodeSettingsParameters :: GetManagedLinodeSettingsParameters
mkGetManagedLinodeSettingsParameters = GetManagedLinodeSettingsParameters{getManagedLinodeSettingsParametersQueryPage = GHC.Maybe.Nothing,
                                                                          getManagedLinodeSettingsParametersQueryPageSize = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getManagedLinodeSettings'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetManagedLinodeSettingsResponseError' is used.
data GetManagedLinodeSettingsResponse =
   GetManagedLinodeSettingsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetManagedLinodeSettingsResponse200 GetManagedLinodeSettingsResponseBody200 -- ^ A paginated list of Managed settings for your Linodes. 
  | GetManagedLinodeSettingsResponseDefault GetManagedLinodeSettingsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/managed\/linode-settings.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetManagedLinodeSettingsResponseBody200 = GetManagedLinodeSettingsResponseBody200 {
  -- | data
  getManagedLinodeSettingsResponseBody200Data :: (GHC.Maybe.Maybe ([ManagedLinodeSettings]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getManagedLinodeSettingsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getManagedLinodeSettingsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getManagedLinodeSettingsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetManagedLinodeSettingsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedLinodeSettingsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedLinodeSettingsResponseBody200" (\obj -> (((GHC.Base.pure GetManagedLinodeSettingsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetManagedLinodeSettingsResponseBody200' with all required fields.
mkGetManagedLinodeSettingsResponseBody200 :: GetManagedLinodeSettingsResponseBody200
mkGetManagedLinodeSettingsResponseBody200 = GetManagedLinodeSettingsResponseBody200{getManagedLinodeSettingsResponseBody200Data = GHC.Maybe.Nothing,
                                                                                    getManagedLinodeSettingsResponseBody200Page = GHC.Maybe.Nothing,
                                                                                    getManagedLinodeSettingsResponseBody200Pages = GHC.Maybe.Nothing,
                                                                                    getManagedLinodeSettingsResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetManagedLinodeSettingsResponseBodyDefault = GetManagedLinodeSettingsResponseBodyDefault {
  -- | errors
  getManagedLinodeSettingsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetManagedLinodeSettingsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getManagedLinodeSettingsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedLinodeSettingsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedLinodeSettingsResponseBodyDefault" (\obj -> GHC.Base.pure GetManagedLinodeSettingsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetManagedLinodeSettingsResponseBodyDefault' with all required fields.
mkGetManagedLinodeSettingsResponseBodyDefault :: GetManagedLinodeSettingsResponseBodyDefault
mkGetManagedLinodeSettingsResponseBodyDefault = GetManagedLinodeSettingsResponseBodyDefault{getManagedLinodeSettingsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
