-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getStackScripts
module Linode.Operations.GetStackScripts where

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

-- | > GET /linode/stackscripts
-- 
-- If the request is not authenticated, only public StackScripts are returned.
-- 
-- For more information on StackScripts, please read our [StackScripts guides](\/docs\/platform\/stackscripts\/).
getStackScripts :: forall m . Linode.Common.MonadHTTP m => GetStackScriptsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetStackScriptsResponse) -- ^ Monadic computation which returns the result of the operation
getStackScripts parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetStackScriptsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetStackScriptsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetStackScriptsResponseBody200)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetStackScriptsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        GetStackScriptsResponseBodyDefault)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/linode/stackscripts") [Linode.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getStackScriptsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                               Linode.Common.QueryParameter (Data.Text.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getStackScriptsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/linode\/stackscripts.GET.parameters@ in the specification.
-- 
-- 
data GetStackScriptsParameters = GetStackScriptsParameters {
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- The page of a collection to return.
  -- 
  -- Constraints:
  -- 
  -- * Minimum  of 1.0
  getStackScriptsParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage_size: Represents the parameter named \'page_size\'
  -- 
  -- The number of items to return per page.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 25.0
  , getStackScriptsParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetStackScriptsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= getStackScriptsParametersQueryPage obj : "queryPage_size" Data.Aeson.Types.ToJSON..= getStackScriptsParametersQueryPageSize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= getStackScriptsParametersQueryPage obj) GHC.Base.<> ("queryPage_size" Data.Aeson.Types.ToJSON..= getStackScriptsParametersQueryPageSize obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetStackScriptsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetStackScriptsParameters" (\obj -> (GHC.Base.pure GetStackScriptsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage_size"))
-- | Create a new 'GetStackScriptsParameters' with all required fields.
mkGetStackScriptsParameters :: GetStackScriptsParameters
mkGetStackScriptsParameters = GetStackScriptsParameters{getStackScriptsParametersQueryPage = GHC.Maybe.Nothing,
                                                        getStackScriptsParametersQueryPageSize = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getStackScripts'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetStackScriptsResponseError' is used.
data GetStackScriptsResponse =
   GetStackScriptsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetStackScriptsResponse200 GetStackScriptsResponseBody200 -- ^ A list of StackScripts available to the User, including private StackScripts owned by the User if the request is authenticated. 
  | GetStackScriptsResponseDefault GetStackScriptsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/linode\/stackscripts.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetStackScriptsResponseBody200 = GetStackScriptsResponseBody200 {
  -- | data
  getStackScriptsResponseBody200Data :: (GHC.Maybe.Maybe ([StackScript]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getStackScriptsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getStackScriptsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getStackScriptsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetStackScriptsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getStackScriptsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getStackScriptsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getStackScriptsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getStackScriptsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getStackScriptsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getStackScriptsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getStackScriptsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getStackScriptsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetStackScriptsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetStackScriptsResponseBody200" (\obj -> (((GHC.Base.pure GetStackScriptsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetStackScriptsResponseBody200' with all required fields.
mkGetStackScriptsResponseBody200 :: GetStackScriptsResponseBody200
mkGetStackScriptsResponseBody200 = GetStackScriptsResponseBody200{getStackScriptsResponseBody200Data = GHC.Maybe.Nothing,
                                                                  getStackScriptsResponseBody200Page = GHC.Maybe.Nothing,
                                                                  getStackScriptsResponseBody200Pages = GHC.Maybe.Nothing,
                                                                  getStackScriptsResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetStackScriptsResponseBodyDefault = GetStackScriptsResponseBodyDefault {
  -- | errors
  getStackScriptsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetStackScriptsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getStackScriptsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getStackScriptsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetStackScriptsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetStackScriptsResponseBodyDefault" (\obj -> GHC.Base.pure GetStackScriptsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetStackScriptsResponseBodyDefault' with all required fields.
mkGetStackScriptsResponseBodyDefault :: GetStackScriptsResponseBodyDefault
mkGetStackScriptsResponseBodyDefault = GetStackScriptsResponseBodyDefault{getStackScriptsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
