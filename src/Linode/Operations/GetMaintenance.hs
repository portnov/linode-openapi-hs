-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getMaintenance
module Linode.Operations.GetMaintenance where

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

-- | > GET /account/maintenance
-- 
-- Returns a collection of Maintenance objects for any entity a user has permissions to view.
-- 
-- Currently, Linodes are the only entities available for viewing.
-- 
-- **Beta**: This endpoint is in beta. Please make sure to prepend all requests with \`\/v4beta\` instead of \`\/v4\`, and be aware that this endpoint may receive breaking updates in the future. This notice will be removed when this endpoint is out of beta.
getMaintenance :: forall m . Linode.Common.MonadHTTP m => Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetMaintenanceResponse) -- ^ Monadic computation which returns the result of the operation
getMaintenance = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetMaintenanceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetMaintenanceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                        GetMaintenanceResponseBody200)
                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetMaintenanceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                          GetMaintenanceResponseBodyDefault)
                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/account/maintenance") GHC.Base.mempty)
-- | Represents a response of the operation 'getMaintenance'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetMaintenanceResponseError' is used.
data GetMaintenanceResponse =
   GetMaintenanceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetMaintenanceResponse200 GetMaintenanceResponseBody200 -- ^ Returns a paginated list of Maintenance objects.
  | GetMaintenanceResponseDefault GetMaintenanceResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/account\/maintenance.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetMaintenanceResponseBody200 = GetMaintenanceResponseBody200 {
  -- | data
  getMaintenanceResponseBody200Data :: (GHC.Maybe.Maybe ([Maintenance]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getMaintenanceResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getMaintenanceResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getMaintenanceResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetMaintenanceResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getMaintenanceResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getMaintenanceResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getMaintenanceResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getMaintenanceResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getMaintenanceResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getMaintenanceResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getMaintenanceResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getMaintenanceResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetMaintenanceResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetMaintenanceResponseBody200" (\obj -> (((GHC.Base.pure GetMaintenanceResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetMaintenanceResponseBody200' with all required fields.
mkGetMaintenanceResponseBody200 :: GetMaintenanceResponseBody200
mkGetMaintenanceResponseBody200 = GetMaintenanceResponseBody200{getMaintenanceResponseBody200Data = GHC.Maybe.Nothing,
                                                                getMaintenanceResponseBody200Page = GHC.Maybe.Nothing,
                                                                getMaintenanceResponseBody200Pages = GHC.Maybe.Nothing,
                                                                getMaintenanceResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetMaintenanceResponseBodyDefault = GetMaintenanceResponseBodyDefault {
  -- | errors
  getMaintenanceResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetMaintenanceResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getMaintenanceResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getMaintenanceResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetMaintenanceResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetMaintenanceResponseBodyDefault" (\obj -> GHC.Base.pure GetMaintenanceResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetMaintenanceResponseBodyDefault' with all required fields.
mkGetMaintenanceResponseBodyDefault :: GetMaintenanceResponseBodyDefault
mkGetMaintenanceResponseBodyDefault = GetMaintenanceResponseBodyDefault{getMaintenanceResponseBodyDefaultErrors = GHC.Maybe.Nothing}
