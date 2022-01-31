-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getKernels
module Linode.Operations.GetKernels where

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

-- | > GET /linode/kernels
-- 
-- Lists available Kernels.
getKernels :: forall m . Linode.Common.MonadHTTP m => GetKernelsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetKernelsResponse) -- ^ Monadic computation which returns the result of the operation
getKernels parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetKernelsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetKernelsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       GetKernelsResponseBody200)
                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetKernelsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         GetKernelsResponseBodyDefault)
                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/linode/kernels") [Linode.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getKernelsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                                Linode.Common.QueryParameter (Data.Text.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getKernelsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/linode\/kernels.GET.parameters@ in the specification.
-- 
-- 
data GetKernelsParameters = GetKernelsParameters {
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- The page of a collection to return.
  -- 
  -- Constraints:
  -- 
  -- * Minimum  of 1.0
  getKernelsParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage_size: Represents the parameter named \'page_size\'
  -- 
  -- The number of items to return per page.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 25.0
  , getKernelsParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetKernelsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= getKernelsParametersQueryPage obj : "queryPage_size" Data.Aeson.Types.ToJSON..= getKernelsParametersQueryPageSize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= getKernelsParametersQueryPage obj) GHC.Base.<> ("queryPage_size" Data.Aeson.Types.ToJSON..= getKernelsParametersQueryPageSize obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetKernelsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetKernelsParameters" (\obj -> (GHC.Base.pure GetKernelsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage_size"))
-- | Create a new 'GetKernelsParameters' with all required fields.
mkGetKernelsParameters :: GetKernelsParameters
mkGetKernelsParameters = GetKernelsParameters{getKernelsParametersQueryPage = GHC.Maybe.Nothing,
                                              getKernelsParametersQueryPageSize = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getKernels'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetKernelsResponseError' is used.
data GetKernelsResponse =
   GetKernelsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetKernelsResponse200 GetKernelsResponseBody200 -- ^ Returns an array of Kernels.
  | GetKernelsResponseDefault GetKernelsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/linode\/kernels.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetKernelsResponseBody200 = GetKernelsResponseBody200 {
  -- | data
  getKernelsResponseBody200Data :: (GHC.Maybe.Maybe ([Kernel]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getKernelsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getKernelsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getKernelsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetKernelsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getKernelsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getKernelsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getKernelsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getKernelsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getKernelsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getKernelsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getKernelsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getKernelsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetKernelsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetKernelsResponseBody200" (\obj -> (((GHC.Base.pure GetKernelsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetKernelsResponseBody200' with all required fields.
mkGetKernelsResponseBody200 :: GetKernelsResponseBody200
mkGetKernelsResponseBody200 = GetKernelsResponseBody200{getKernelsResponseBody200Data = GHC.Maybe.Nothing,
                                                        getKernelsResponseBody200Page = GHC.Maybe.Nothing,
                                                        getKernelsResponseBody200Pages = GHC.Maybe.Nothing,
                                                        getKernelsResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetKernelsResponseBodyDefault = GetKernelsResponseBodyDefault {
  -- | errors
  getKernelsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetKernelsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getKernelsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getKernelsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetKernelsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetKernelsResponseBodyDefault" (\obj -> GHC.Base.pure GetKernelsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetKernelsResponseBodyDefault' with all required fields.
mkGetKernelsResponseBodyDefault :: GetKernelsResponseBodyDefault
mkGetKernelsResponseBodyDefault = GetKernelsResponseBodyDefault{getKernelsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
