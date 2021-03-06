-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getUserGrants
module Linode.Operations.GetUserGrants where

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

-- | > GET /account/users/{username}/grants
-- 
-- Returns the full grants structure for the specified account User (other than the account owner, see below for details). This includes all entities on the Account alongside the level of access this User has to each of them.
-- 
-- The current authenticated User, including the account owner, may view their own grants at the [\/profile\/grants](\/docs\/api\/profile\/\#grants-list) endpoint, but will not see entities that they do not have access to.
getUserGrants :: forall m . Linode.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ username: The username to look up.
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetUserGrantsResponse) -- ^ Monadic computation which returns the result of the operation
getUserGrants username = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetUserGrantsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetUserGrantsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                              GrantsResponse)
                                                                                                                                                                 | (\status_2 -> Network.HTTP.Types.Status.statusCode status_2 GHC.Classes.== 204) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetUserGrantsResponse204
                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetUserGrantsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                GetUserGrantsResponseBodyDefault)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/account/users/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel username)) GHC.Base.++ "/grants"))) GHC.Base.mempty)
-- | Represents a response of the operation 'getUserGrants'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetUserGrantsResponseError' is used.
data GetUserGrantsResponse =
   GetUserGrantsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetUserGrantsResponse200 GrantsResponse -- ^ The User\'s grants.
  | GetUserGrantsResponse204 -- ^ This is an unrestricted User, and therefore has no grants to return. This User may access everything on the Account and perform all actions. 
  | GetUserGrantsResponseDefault GetUserGrantsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetUserGrantsResponseBodyDefault = GetUserGrantsResponseBodyDefault {
  -- | errors
  getUserGrantsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetUserGrantsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getUserGrantsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getUserGrantsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetUserGrantsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetUserGrantsResponseBodyDefault" (\obj -> GHC.Base.pure GetUserGrantsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetUserGrantsResponseBodyDefault' with all required fields.
mkGetUserGrantsResponseBodyDefault :: GetUserGrantsResponseBodyDefault
mkGetUserGrantsResponseBodyDefault = GetUserGrantsResponseBodyDefault{getUserGrantsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
