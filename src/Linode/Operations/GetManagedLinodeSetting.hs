-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getManagedLinodeSetting
module Linode.Operations.GetManagedLinodeSetting where

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

-- | > GET /managed/linode-settings/{linodeId}
-- 
-- Returns a single Linode\'s Managed settings.
getManagedLinodeSetting :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetManagedLinodeSettingResponse)) -- ^ Monad containing the result of the operation
getManagedLinodeSetting config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetManagedLinodeSettingResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetManagedLinodeSettingResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                         ManagedLinodeSettings)
                                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetManagedLinodeSettingResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                           GetManagedLinodeSettingResponseBodyDefault)
                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/linode-settings/{linodeId}") [])
-- | > GET /managed/linode-settings/{linodeId}
-- 
-- The same as 'getManagedLinodeSetting' but returns the raw 'Data.ByteString.Char8.ByteString'
getManagedLinodeSettingRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                            Linode.Common.SecurityScheme s) =>
                              Linode.Common.Configuration s ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getManagedLinodeSettingRaw config = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/linode-settings/{linodeId}") [])
-- | > GET /managed/linode-settings/{linodeId}
-- 
-- Monadic version of 'getManagedLinodeSetting' (use with 'Linode.Common.runWithConfiguration')
getManagedLinodeSettingM :: forall m s . (Linode.Common.MonadHTTP m,
                                          Linode.Common.SecurityScheme s) =>
                            Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response GetManagedLinodeSettingResponse))
getManagedLinodeSettingM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetManagedLinodeSettingResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetManagedLinodeSettingResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                   ManagedLinodeSettings)
                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetManagedLinodeSettingResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                     GetManagedLinodeSettingResponseBodyDefault)
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/linode-settings/{linodeId}") [])
-- | > GET /managed/linode-settings/{linodeId}
-- 
-- Monadic version of 'getManagedLinodeSettingRaw' (use with 'Linode.Common.runWithConfiguration')
getManagedLinodeSettingRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                             Linode.Common.SecurityScheme s) =>
                               Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getManagedLinodeSettingRawM = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/managed/linode-settings/{linodeId}") [])
-- | Represents a response of the operation 'getManagedLinodeSetting'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetManagedLinodeSettingResponseError' is used.
data GetManagedLinodeSettingResponse =                                                 
   GetManagedLinodeSettingResponseError GHC.Base.String                                -- ^ Means either no matching case available or a parse error
  | GetManagedLinodeSettingResponse200 ManagedLinodeSettings                           -- ^ The requested Linode\'s Managed settings.
  | GetManagedLinodeSettingResponseDefault GetManagedLinodeSettingResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetManagedLinodeSettingResponseBodyDefault
-- 
-- 
data GetManagedLinodeSettingResponseBodyDefault = GetManagedLinodeSettingResponseBodyDefault {
  -- | errors
  getManagedLinodeSettingResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetManagedLinodeSettingResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (getManagedLinodeSettingResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (getManagedLinodeSettingResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetManagedLinodeSettingResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetManagedLinodeSettingResponseBodyDefault" (\obj -> GHC.Base.pure GetManagedLinodeSettingResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
