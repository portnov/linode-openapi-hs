-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation resetLinodePassword
module Linode.Operations.ResetLinodePassword where

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

-- | > POST /linode/instances/{linodeId}/password
-- 
-- Resets the root password for this Linode.
-- * Your Linode must be [shut down](\/docs\/api\/linode-instances\/\#linode-shut-down) for a password reset to complete.
-- * If your Linode has more than one disk (not counting its swap disk), use the [Reset Disk Root Password](\/docs\/api\/linode-instances\/\#disk-root-password-reset) endpoint to update a specific disk\'s root password.
-- * A \`password_reset\` event is generated when a root password reset is successful.
resetLinodePassword :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.Maybe ResetLinodePasswordRequestBody                                                                                   -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response ResetLinodePasswordResponse)) -- ^ Monad containing the result of the operation
resetLinodePassword config
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ResetLinodePasswordResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ResetLinodePasswordResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           ResetLinodePasswordResponseBody200)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ResetLinodePasswordResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             ResetLinodePasswordResponseBodyDefault)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/password") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/instances/{linodeId}/password
-- 
-- The same as 'resetLinodePassword' but returns the raw 'Data.ByteString.Char8.ByteString'
resetLinodePasswordRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                        Linode.Common.SecurityScheme s) =>
                          Linode.Common.Configuration s ->
                          GHC.Base.Maybe ResetLinodePasswordRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
resetLinodePasswordRaw config
                       body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/password") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/instances/{linodeId}/password
-- 
-- Monadic version of 'resetLinodePassword' (use with 'Linode.Common.runWithConfiguration')
resetLinodePasswordM :: forall m s . (Linode.Common.MonadHTTP m,
                                      Linode.Common.SecurityScheme s) =>
                        GHC.Base.Maybe ResetLinodePasswordRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response ResetLinodePasswordResponse))
resetLinodePasswordM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either ResetLinodePasswordResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ResetLinodePasswordResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            ResetLinodePasswordResponseBody200)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ResetLinodePasswordResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              ResetLinodePasswordResponseBodyDefault)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/password") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/instances/{linodeId}/password
-- 
-- Monadic version of 'resetLinodePasswordRaw' (use with 'Linode.Common.runWithConfiguration')
resetLinodePasswordRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                         Linode.Common.SecurityScheme s) =>
                           GHC.Base.Maybe ResetLinodePasswordRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
resetLinodePasswordRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/password") [] body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema resetLinodePasswordRequestBody
-- 
-- 
data ResetLinodePasswordRequestBody = ResetLinodePasswordRequestBody {
  -- | root_pass: The root user\'s password on this Linode. Linode passwords must meet a password strength score requirement that is calculated internally by the API. If the strength requirement is not met, you will receive a Password does not meet strength requirement error.
  resetLinodePasswordRequestBodyRoot_pass :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ResetLinodePasswordRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "root_pass" (resetLinodePasswordRequestBodyRoot_pass obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "root_pass" (resetLinodePasswordRequestBodyRoot_pass obj))
instance Data.Aeson.Types.FromJSON.FromJSON ResetLinodePasswordRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ResetLinodePasswordRequestBody" (\obj -> GHC.Base.pure ResetLinodePasswordRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "root_pass"))
-- | Represents a response of the operation 'resetLinodePassword'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ResetLinodePasswordResponseError' is used.
data ResetLinodePasswordResponse =                                             
   ResetLinodePasswordResponseError GHC.Base.String                            -- ^ Means either no matching case available or a parse error
  | ResetLinodePasswordResponse200 ResetLinodePasswordResponseBody200          -- ^ Password Reset.
  | ResetLinodePasswordResponseDefault ResetLinodePasswordResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema ResetLinodePasswordResponseBody200
-- 
-- 
data ResetLinodePasswordResponseBody200 = ResetLinodePasswordResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ResetLinodePasswordResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON ResetLinodePasswordResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ResetLinodePasswordResponseBody200" (\obj -> GHC.Base.pure ResetLinodePasswordResponseBody200)
-- | Defines the data type for the schema ResetLinodePasswordResponseBodyDefault
-- 
-- 
data ResetLinodePasswordResponseBodyDefault = ResetLinodePasswordResponseBodyDefault {
  -- | errors
  resetLinodePasswordResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ResetLinodePasswordResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (resetLinodePasswordResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (resetLinodePasswordResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON ResetLinodePasswordResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ResetLinodePasswordResponseBodyDefault" (\obj -> GHC.Base.pure ResetLinodePasswordResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
