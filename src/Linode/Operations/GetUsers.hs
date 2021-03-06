-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getUsers
module Linode.Operations.GetUsers where

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

-- | > GET /account/users
-- 
-- Returns a paginated list of Users on your Account. Users may access all or part of your Account based on their restricted status and grants.  An unrestricted User may access everything on the account, whereas restricted User may only access entities or perform actions they\'ve been given specific grants to.
getUsers :: forall m . Linode.Common.MonadHTTP m => GetUsersParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetUsersResponse) -- ^ Monadic computation which returns the result of the operation
getUsers parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetUsersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetUsersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                 GetUsersResponseBody200)
                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetUsersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                   GetUsersResponseBodyDefault)
                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/account/users") [Linode.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getUsersParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                           Linode.Common.QueryParameter (Data.Text.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getUsersParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/account\/users.GET.parameters@ in the specification.
-- 
-- 
data GetUsersParameters = GetUsersParameters {
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- The page of a collection to return.
  -- 
  -- Constraints:
  -- 
  -- * Minimum  of 1.0
  getUsersParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage_size: Represents the parameter named \'page_size\'
  -- 
  -- The number of items to return per page.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 25.0
  , getUsersParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetUsersParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= getUsersParametersQueryPage obj : "queryPage_size" Data.Aeson.Types.ToJSON..= getUsersParametersQueryPageSize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= getUsersParametersQueryPage obj) GHC.Base.<> ("queryPage_size" Data.Aeson.Types.ToJSON..= getUsersParametersQueryPageSize obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetUsersParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetUsersParameters" (\obj -> (GHC.Base.pure GetUsersParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage_size"))
-- | Create a new 'GetUsersParameters' with all required fields.
mkGetUsersParameters :: GetUsersParameters
mkGetUsersParameters = GetUsersParameters{getUsersParametersQueryPage = GHC.Maybe.Nothing,
                                          getUsersParametersQueryPageSize = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getUsers'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetUsersResponseError' is used.
data GetUsersResponse =
   GetUsersResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetUsersResponse200 GetUsersResponseBody200 -- ^ A paginated list of Users.
  | GetUsersResponseDefault GetUsersResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/account\/users.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetUsersResponseBody200 = GetUsersResponseBody200 {
  -- | data
  getUsersResponseBody200Data :: (GHC.Maybe.Maybe ([User]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getUsersResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getUsersResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getUsersResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetUsersResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getUsersResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getUsersResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getUsersResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getUsersResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getUsersResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getUsersResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getUsersResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getUsersResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetUsersResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetUsersResponseBody200" (\obj -> (((GHC.Base.pure GetUsersResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetUsersResponseBody200' with all required fields.
mkGetUsersResponseBody200 :: GetUsersResponseBody200
mkGetUsersResponseBody200 = GetUsersResponseBody200{getUsersResponseBody200Data = GHC.Maybe.Nothing,
                                                    getUsersResponseBody200Page = GHC.Maybe.Nothing,
                                                    getUsersResponseBody200Pages = GHC.Maybe.Nothing,
                                                    getUsersResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetUsersResponseBodyDefault = GetUsersResponseBodyDefault {
  -- | errors
  getUsersResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetUsersResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getUsersResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getUsersResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetUsersResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetUsersResponseBodyDefault" (\obj -> GHC.Base.pure GetUsersResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetUsersResponseBodyDefault' with all required fields.
mkGetUsersResponseBodyDefault :: GetUsersResponseBodyDefault
mkGetUsersResponseBodyDefault = GetUsersResponseBodyDefault{getUsersResponseBodyDefaultErrors = GHC.Maybe.Nothing}
