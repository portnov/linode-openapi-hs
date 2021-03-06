-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getAccountLogins
module Linode.Operations.GetAccountLogins where

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

-- | > GET /account/logins
-- 
-- Returns a collection of successful logins for all users on the account during the last 90 days. This command can only be accessed by the unrestricted users of an account.
getAccountLogins :: forall m . Linode.Common.MonadHTTP m => Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetAccountLoginsResponse) -- ^ Monadic computation which returns the result of the operation
getAccountLogins = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAccountLoginsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountLoginsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                              GetAccountLoginsResponseBody200)
                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountLoginsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                GetAccountLoginsResponseBodyDefault)
                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/account/logins") GHC.Base.mempty)
-- | Represents a response of the operation 'getAccountLogins'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountLoginsResponseError' is used.
data GetAccountLoginsResponse =
   GetAccountLoginsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetAccountLoginsResponse200 GetAccountLoginsResponseBody200 -- ^ A collection of successful logins for all users on the account during the last 90 days. 
  | GetAccountLoginsResponseDefault GetAccountLoginsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/account\/logins.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetAccountLoginsResponseBody200 = GetAccountLoginsResponseBody200 {
  -- | data
  getAccountLoginsResponseBody200Data :: (GHC.Maybe.Maybe ([Login]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getAccountLoginsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getAccountLoginsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getAccountLoginsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAccountLoginsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getAccountLoginsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getAccountLoginsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getAccountLoginsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getAccountLoginsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getAccountLoginsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getAccountLoginsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getAccountLoginsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getAccountLoginsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountLoginsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountLoginsResponseBody200" (\obj -> (((GHC.Base.pure GetAccountLoginsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetAccountLoginsResponseBody200' with all required fields.
mkGetAccountLoginsResponseBody200 :: GetAccountLoginsResponseBody200
mkGetAccountLoginsResponseBody200 = GetAccountLoginsResponseBody200{getAccountLoginsResponseBody200Data = GHC.Maybe.Nothing,
                                                                    getAccountLoginsResponseBody200Page = GHC.Maybe.Nothing,
                                                                    getAccountLoginsResponseBody200Pages = GHC.Maybe.Nothing,
                                                                    getAccountLoginsResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetAccountLoginsResponseBodyDefault = GetAccountLoginsResponseBodyDefault {
  -- | errors
  getAccountLoginsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAccountLoginsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getAccountLoginsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getAccountLoginsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountLoginsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountLoginsResponseBodyDefault" (\obj -> GHC.Base.pure GetAccountLoginsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetAccountLoginsResponseBodyDefault' with all required fields.
mkGetAccountLoginsResponseBodyDefault :: GetAccountLoginsResponseBodyDefault
mkGetAccountLoginsResponseBodyDefault = GetAccountLoginsResponseBodyDefault{getAccountLoginsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
