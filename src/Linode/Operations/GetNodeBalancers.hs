-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getNodeBalancers
module Linode.Operations.GetNodeBalancers where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
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
import qualified GHC.Generics
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
import Linode.ManualTypes

-- | > GET /nodebalancers
-- 
-- Returns a paginated list of NodeBalancers you have access to.
getNodeBalancers :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.Maybe GHC.Integer.Type.Integer                                                                                      -- ^ page: The page of a collection to return. | Constraints: Minimum  of 1.0
  -> GHC.Base.Maybe GHC.Integer.Type.Integer                                                                                      -- ^ page_size: The number of items to return per page. | Constraints: Maxium  of 100.0, Minimum  of 25.0
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetNodeBalancersResponse)) -- ^ Monad containing the result of the operation
getNodeBalancers config
                 page
                 page_size = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetNodeBalancersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetNodeBalancersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                       GetNodeBalancersResponseBody200)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetNodeBalancersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                         GetNodeBalancersResponseBodyDefault)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/nodebalancers") ((Data.Text.pack "page",
                                                                                                                                                                                                                                                                                                                                                                                                                                 Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /nodebalancers
-- 
-- The same as 'getNodeBalancers' but returns the raw 'Data.ByteString.Char8.ByteString'
getNodeBalancersRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                     Linode.Common.SecurityScheme s) =>
                       Linode.Common.Configuration s ->
                       GHC.Base.Maybe GHC.Integer.Type.Integer ->
                       GHC.Base.Maybe GHC.Integer.Type.Integer ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getNodeBalancersRaw config
                    page
                    page_size = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/nodebalancers") ((Data.Text.pack "page",
                                                                                                                                                                                   Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                            Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /nodebalancers
-- 
-- Monadic version of 'getNodeBalancers' (use with 'Linode.Common.runWithConfiguration')
getNodeBalancersM :: forall m s . (Linode.Common.MonadHTTP m,
                                   Linode.Common.SecurityScheme s) =>
                     GHC.Base.Maybe GHC.Integer.Type.Integer ->
                     GHC.Base.Maybe GHC.Integer.Type.Integer ->
                     Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response GetNodeBalancersResponse))
getNodeBalancersM page
                  page_size = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetNodeBalancersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetNodeBalancersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        GetNodeBalancersResponseBody200)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetNodeBalancersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          GetNodeBalancersResponseBodyDefault)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/nodebalancers") ((Data.Text.pack "page",
                                                                                                                                                                                                                                                                                                                                                                                                                            Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /nodebalancers
-- 
-- Monadic version of 'getNodeBalancersRaw' (use with 'Linode.Common.runWithConfiguration')
getNodeBalancersRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                      Linode.Common.SecurityScheme s) =>
                        GHC.Base.Maybe GHC.Integer.Type.Integer ->
                        GHC.Base.Maybe GHC.Integer.Type.Integer ->
                        Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getNodeBalancersRawM page
                     page_size = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/nodebalancers") ((Data.Text.pack "page",
                                                                                                                                                                              Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                       Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | Represents a response of the operation 'getNodeBalancers'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetNodeBalancersResponseError' is used.
data GetNodeBalancersResponse =                                          
   GetNodeBalancersResponseError GHC.Base.String                         -- ^ Means either no matching case available or a parse error
  | GetNodeBalancersResponse200 GetNodeBalancersResponseBody200          -- ^ A paginated list of NodeBalancers.
  | GetNodeBalancersResponseDefault GetNodeBalancersResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetNodeBalancersResponseBody200
-- 
-- 
data GetNodeBalancersResponseBody200 = GetNodeBalancersResponseBody200 {
  -- | data
  getNodeBalancersResponseBody200Data :: (GHC.Base.Maybe ([] NodeBalancer))
  -- | page
  , getNodeBalancersResponseBody200Page :: (GHC.Base.Maybe PaginationEnvelope_properties_page)
  -- | pages
  , getNodeBalancersResponseBody200Pages :: (GHC.Base.Maybe PaginationEnvelope_properties_pages)
  -- | results
  , getNodeBalancersResponseBody200Results :: (GHC.Base.Maybe PaginationEnvelope_properties_results)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetNodeBalancersResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getNodeBalancersResponseBody200Data obj) : (Data.Aeson..=) "page" (getNodeBalancersResponseBody200Page obj) : (Data.Aeson..=) "pages" (getNodeBalancersResponseBody200Pages obj) : (Data.Aeson..=) "results" (getNodeBalancersResponseBody200Results obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getNodeBalancersResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "page" (getNodeBalancersResponseBody200Page obj) GHC.Base.<> ((Data.Aeson..=) "pages" (getNodeBalancersResponseBody200Pages obj) GHC.Base.<> (Data.Aeson..=) "results" (getNodeBalancersResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetNodeBalancersResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetNodeBalancersResponseBody200" (\obj -> (((GHC.Base.pure GetNodeBalancersResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Defines the data type for the schema GetNodeBalancersResponseBodyDefault
-- 
-- 
data GetNodeBalancersResponseBodyDefault = GetNodeBalancersResponseBodyDefault {
  -- | errors
  getNodeBalancersResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetNodeBalancersResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (getNodeBalancersResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (getNodeBalancersResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetNodeBalancersResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetNodeBalancersResponseBodyDefault" (\obj -> GHC.Base.pure GetNodeBalancersResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))