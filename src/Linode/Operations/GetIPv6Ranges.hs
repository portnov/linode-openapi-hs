-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getIPv6Ranges
module Linode.Operations.GetIPv6Ranges where

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

-- | > GET /networking/ipv6/ranges
-- 
-- Displays the IPv6 ranges on your Account.
-- 
-- 
--   * An IPv6 range is a \`\/64\` or \`\/54\` block of IPv6 addresses routed to a single Linode in a given [Region](\/docs\/api\/regions\/\#regions-list).
-- 
--   * Your Linode is responsible for routing individual addresses in the range, or handling traffic for all the addresses in the range.
-- 
--   * Access the IPv6 Range Create ([POST \/networking\/ipv6\/ranges](\/docs\/api\/networking\/\#ipv6-range-create)) endpoint to add a \`\/64\` or \`\/56\` block of IPv6 addresses to your account.
getIPv6Ranges :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.Maybe GHC.Integer.Type.Integer                                                                                   -- ^ page: The page of a collection to return. | Constraints: Minimum  of 1.0
  -> GHC.Base.Maybe GHC.Integer.Type.Integer                                                                                   -- ^ page_size: The number of items to return per page. | Constraints: Maxium  of 100.0, Minimum  of 25.0
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetIPv6RangesResponse)) -- ^ Monad containing the result of the operation
getIPv6Ranges config
              page
              page_size = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetIPv6RangesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIPv6RangesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              GetIPv6RangesResponseBody200)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIPv6RangesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                GetIPv6RangesResponseBodyDefault)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/networking/ipv6/ranges") ((Data.Text.pack "page",
                                                                                                                                                                                                                                                                                                                                                                                                                                    Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /networking/ipv6/ranges
-- 
-- The same as 'getIPv6Ranges' but returns the raw 'Data.ByteString.Char8.ByteString'
getIPv6RangesRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                  Linode.Common.SecurityScheme s) =>
                    Linode.Common.Configuration s ->
                    GHC.Base.Maybe GHC.Integer.Type.Integer ->
                    GHC.Base.Maybe GHC.Integer.Type.Integer ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIPv6RangesRaw config
                 page
                 page_size = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/networking/ipv6/ranges") ((Data.Text.pack "page",
                                                                                                                                                                                         Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                                  Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /networking/ipv6/ranges
-- 
-- Monadic version of 'getIPv6Ranges' (use with 'Linode.Common.runWithConfiguration')
getIPv6RangesM :: forall m s . (Linode.Common.MonadHTTP m,
                                Linode.Common.SecurityScheme s) =>
                  GHC.Base.Maybe GHC.Integer.Type.Integer ->
                  GHC.Base.Maybe GHC.Integer.Type.Integer ->
                  Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response GetIPv6RangesResponse))
getIPv6RangesM page
               page_size = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetIPv6RangesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIPv6RangesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               GetIPv6RangesResponseBody200)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIPv6RangesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 GetIPv6RangesResponseBodyDefault)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/networking/ipv6/ranges") ((Data.Text.pack "page",
                                                                                                                                                                                                                                                                                                                                                                                                                               Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /networking/ipv6/ranges
-- 
-- Monadic version of 'getIPv6RangesRaw' (use with 'Linode.Common.runWithConfiguration')
getIPv6RangesRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                   Linode.Common.SecurityScheme s) =>
                     GHC.Base.Maybe GHC.Integer.Type.Integer ->
                     GHC.Base.Maybe GHC.Integer.Type.Integer ->
                     Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIPv6RangesRawM page
                  page_size = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/networking/ipv6/ranges") ((Data.Text.pack "page",
                                                                                                                                                                                    Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                             Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | Represents a response of the operation 'getIPv6Ranges'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIPv6RangesResponseError' is used.
data GetIPv6RangesResponse =                                       
   GetIPv6RangesResponseError GHC.Base.String                      -- ^ Means either no matching case available or a parse error
  | GetIPv6RangesResponse200 GetIPv6RangesResponseBody200          -- ^ The IPv6 ranges on your Account.
  | GetIPv6RangesResponseDefault GetIPv6RangesResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetIPv6RangesResponseBody200
-- 
-- 
data GetIPv6RangesResponseBody200 = GetIPv6RangesResponseBody200 {
  -- | data
  getIPv6RangesResponseBody200Data :: (GHC.Base.Maybe ([] IPv6Range))
  -- | page
  , getIPv6RangesResponseBody200Page :: (GHC.Base.Maybe PaginationEnvelope_properties_page)
  -- | pages
  , getIPv6RangesResponseBody200Pages :: (GHC.Base.Maybe PaginationEnvelope_properties_pages)
  -- | results
  , getIPv6RangesResponseBody200Results :: (GHC.Base.Maybe PaginationEnvelope_properties_results)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetIPv6RangesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getIPv6RangesResponseBody200Data obj) : (Data.Aeson..=) "page" (getIPv6RangesResponseBody200Page obj) : (Data.Aeson..=) "pages" (getIPv6RangesResponseBody200Pages obj) : (Data.Aeson..=) "results" (getIPv6RangesResponseBody200Results obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getIPv6RangesResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "page" (getIPv6RangesResponseBody200Page obj) GHC.Base.<> ((Data.Aeson..=) "pages" (getIPv6RangesResponseBody200Pages obj) GHC.Base.<> (Data.Aeson..=) "results" (getIPv6RangesResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetIPv6RangesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIPv6RangesResponseBody200" (\obj -> (((GHC.Base.pure GetIPv6RangesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Defines the data type for the schema GetIPv6RangesResponseBodyDefault
-- 
-- 
data GetIPv6RangesResponseBodyDefault = GetIPv6RangesResponseBodyDefault {
  -- | errors
  getIPv6RangesResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetIPv6RangesResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (getIPv6RangesResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (getIPv6RangesResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetIPv6RangesResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIPv6RangesResponseBodyDefault" (\obj -> GHC.Base.pure GetIPv6RangesResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))