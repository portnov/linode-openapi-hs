-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getManagedIssues
module Linode.Operations.GetManagedIssues where

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

-- | > GET /managed/issues
-- 
-- Returns a paginated list of recent and ongoing issues detected on your Managed Services.
getManagedIssues :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.Maybe GHC.Integer.Type.Integer                                                                                      -- ^ page: The page of a collection to return. | Constraints: Minimum  of 1.0
  -> GHC.Base.Maybe GHC.Integer.Type.Integer                                                                                      -- ^ page_size: The number of items to return per page. | Constraints: Maxium  of 100.0, Minimum  of 25.0
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetManagedIssuesResponse)) -- ^ Monad containing the result of the operation
getManagedIssues config
                 page
                 page_size = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetManagedIssuesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetManagedIssuesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                       GetManagedIssuesResponseBody200)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetManagedIssuesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                         GetManagedIssuesResponseBodyDefault)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/issues") ((Data.Text.pack "page",
                                                                                                                                                                                                                                                                                                                                                                                                                                  Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /managed/issues
-- 
-- The same as 'getManagedIssues' but returns the raw 'Data.ByteString.Char8.ByteString'
getManagedIssuesRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                     Linode.Common.SecurityScheme s) =>
                       Linode.Common.Configuration s ->
                       GHC.Base.Maybe GHC.Integer.Type.Integer ->
                       GHC.Base.Maybe GHC.Integer.Type.Integer ->
                       m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getManagedIssuesRaw config
                    page
                    page_size = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/issues") ((Data.Text.pack "page",
                                                                                                                                                                                    Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                             Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /managed/issues
-- 
-- Monadic version of 'getManagedIssues' (use with 'Linode.Common.runWithConfiguration')
getManagedIssuesM :: forall m s . (Linode.Common.MonadHTTP m,
                                   Linode.Common.SecurityScheme s) =>
                     GHC.Base.Maybe GHC.Integer.Type.Integer ->
                     GHC.Base.Maybe GHC.Integer.Type.Integer ->
                     Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response GetManagedIssuesResponse))
getManagedIssuesM page
                  page_size = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetManagedIssuesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetManagedIssuesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        GetManagedIssuesResponseBody200)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetManagedIssuesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          GetManagedIssuesResponseBodyDefault)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/issues") ((Data.Text.pack "page",
                                                                                                                                                                                                                                                                                                                                                                                                                             Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /managed/issues
-- 
-- Monadic version of 'getManagedIssuesRaw' (use with 'Linode.Common.runWithConfiguration')
getManagedIssuesRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                      Linode.Common.SecurityScheme s) =>
                        GHC.Base.Maybe GHC.Integer.Type.Integer ->
                        GHC.Base.Maybe GHC.Integer.Type.Integer ->
                        Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getManagedIssuesRawM page
                     page_size = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/issues") ((Data.Text.pack "page",
                                                                                                                                                                               Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                        Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | Represents a response of the operation 'getManagedIssues'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetManagedIssuesResponseError' is used.
data GetManagedIssuesResponse =                                          
   GetManagedIssuesResponseError GHC.Base.String                         -- ^ Means either no matching case available or a parse error
  | GetManagedIssuesResponse200 GetManagedIssuesResponseBody200          -- ^ A paginated list of open or ongoing Managed Issues. 
  | GetManagedIssuesResponseDefault GetManagedIssuesResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetManagedIssuesResponseBody200
-- 
-- 
data GetManagedIssuesResponseBody200 = GetManagedIssuesResponseBody200 {
  -- | data
  getManagedIssuesResponseBody200Data :: (GHC.Base.Maybe ([] ManagedIssue))
  -- | page
  , getManagedIssuesResponseBody200Page :: (GHC.Base.Maybe PaginationEnvelope_properties_page)
  -- | pages
  , getManagedIssuesResponseBody200Pages :: (GHC.Base.Maybe PaginationEnvelope_properties_pages)
  -- | results
  , getManagedIssuesResponseBody200Results :: (GHC.Base.Maybe PaginationEnvelope_properties_results)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetManagedIssuesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getManagedIssuesResponseBody200Data obj) : (Data.Aeson..=) "page" (getManagedIssuesResponseBody200Page obj) : (Data.Aeson..=) "pages" (getManagedIssuesResponseBody200Pages obj) : (Data.Aeson..=) "results" (getManagedIssuesResponseBody200Results obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getManagedIssuesResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "page" (getManagedIssuesResponseBody200Page obj) GHC.Base.<> ((Data.Aeson..=) "pages" (getManagedIssuesResponseBody200Pages obj) GHC.Base.<> (Data.Aeson..=) "results" (getManagedIssuesResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedIssuesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedIssuesResponseBody200" (\obj -> (((GHC.Base.pure GetManagedIssuesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Defines the data type for the schema GetManagedIssuesResponseBodyDefault
-- 
-- 
data GetManagedIssuesResponseBodyDefault = GetManagedIssuesResponseBodyDefault {
  -- | errors
  getManagedIssuesResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetManagedIssuesResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (getManagedIssuesResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (getManagedIssuesResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedIssuesResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedIssuesResponseBodyDefault" (\obj -> GHC.Base.pure GetManagedIssuesResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))