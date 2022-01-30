-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getVolumes
module Linode.Operations.GetVolumes where

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

-- | > GET /volumes
-- 
-- Returns a paginated list of Volumes you have permission to view.
getVolumes :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.Maybe GHC.Integer.Type.Integer                                                                                -- ^ page: The page of a collection to return. | Constraints: Minimum  of 1.0
  -> GHC.Base.Maybe GHC.Integer.Type.Integer                                                                                -- ^ page_size: The number of items to return per page. | Constraints: Maxium  of 100.0, Minimum  of 25.0
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetVolumesResponse)) -- ^ Monad containing the result of the operation
getVolumes config
           page
           page_size = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetVolumesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetVolumesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                     GetVolumesResponseBody200)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetVolumesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                       GetVolumesResponseBodyDefault)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/volumes") ((Data.Text.pack "page",
                                                                                                                                                                                                                                                                                                                                                                                                               Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /volumes
-- 
-- The same as 'getVolumes' but returns the raw 'Data.ByteString.Char8.ByteString'
getVolumesRaw :: forall m s . (Linode.Common.MonadHTTP m,
                               Linode.Common.SecurityScheme s) =>
                 Linode.Common.Configuration s ->
                 GHC.Base.Maybe GHC.Integer.Type.Integer ->
                 GHC.Base.Maybe GHC.Integer.Type.Integer ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getVolumesRaw config
              page
              page_size = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/volumes") ((Data.Text.pack "page",
                                                                                                                                                                       Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /volumes
-- 
-- Monadic version of 'getVolumes' (use with 'Linode.Common.runWithConfiguration')
getVolumesM :: forall m s . (Linode.Common.MonadHTTP m,
                             Linode.Common.SecurityScheme s) =>
               GHC.Base.Maybe GHC.Integer.Type.Integer ->
               GHC.Base.Maybe GHC.Integer.Type.Integer ->
               Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                  m
                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response GetVolumesResponse))
getVolumesM page
            page_size = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetVolumesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetVolumesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetVolumesResponseBody200)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetVolumesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        GetVolumesResponseBodyDefault)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/volumes") ((Data.Text.pack "page",
                                                                                                                                                                                                                                                                                                                                                                                                          Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | > GET /volumes
-- 
-- Monadic version of 'getVolumesRaw' (use with 'Linode.Common.runWithConfiguration')
getVolumesRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                Linode.Common.SecurityScheme s) =>
                  GHC.Base.Maybe GHC.Integer.Type.Integer ->
                  GHC.Base.Maybe GHC.Integer.Type.Integer ->
                  Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getVolumesRawM page
               page_size = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/volumes") ((Data.Text.pack "page",
                                                                                                                                                                  Linode.Common.stringifyModel Data.Functor.<$> page) : ((Data.Text.pack "page_size",
                                                                                                                                                                                                                           Linode.Common.stringifyModel Data.Functor.<$> page_size) : [])))
-- | Represents a response of the operation 'getVolumes'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetVolumesResponseError' is used.
data GetVolumesResponse =                                    
   GetVolumesResponseError GHC.Base.String                   -- ^ Means either no matching case available or a parse error
  | GetVolumesResponse200 GetVolumesResponseBody200          -- ^ Returns an array of all Volumes on your Account.
  | GetVolumesResponseDefault GetVolumesResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetVolumesResponseBody200
-- 
-- 
data GetVolumesResponseBody200 = GetVolumesResponseBody200 {
  -- | data
  getVolumesResponseBody200Data :: (GHC.Base.Maybe ([] Volume))
  -- | page
  , getVolumesResponseBody200Page :: (GHC.Base.Maybe PaginationEnvelope_properties_page)
  -- | pages
  , getVolumesResponseBody200Pages :: (GHC.Base.Maybe PaginationEnvelope_properties_pages)
  -- | results
  , getVolumesResponseBody200Results :: (GHC.Base.Maybe PaginationEnvelope_properties_results)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getVolumesResponseBody200Data obj) : (Data.Aeson..=) "page" (getVolumesResponseBody200Page obj) : (Data.Aeson..=) "pages" (getVolumesResponseBody200Pages obj) : (Data.Aeson..=) "results" (getVolumesResponseBody200Results obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getVolumesResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "page" (getVolumesResponseBody200Page obj) GHC.Base.<> ((Data.Aeson..=) "pages" (getVolumesResponseBody200Pages obj) GHC.Base.<> (Data.Aeson..=) "results" (getVolumesResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesResponseBody200" (\obj -> (((GHC.Base.pure GetVolumesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Defines the data type for the schema GetVolumesResponseBodyDefault
-- 
-- 
data GetVolumesResponseBodyDefault = GetVolumesResponseBodyDefault {
  -- | errors
  getVolumesResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (getVolumesResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (getVolumesResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesResponseBodyDefault" (\obj -> GHC.Base.pure GetVolumesResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
