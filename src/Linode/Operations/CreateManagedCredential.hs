-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation createManagedCredential
module Linode.Operations.CreateManagedCredential where

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

-- | > POST /managed/credentials
-- 
-- Creates a Managed Credential. A Managed Credential is stored securely to allow Linode special forces to access your Managed Services and resolve issues.
createManagedCredential :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.Maybe CreateManagedCredentialRequestBody                                                                                   -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response CreateManagedCredentialResponse)) -- ^ Monad containing the result of the operation
createManagedCredential config
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either CreateManagedCredentialResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CreateManagedCredentialResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       ManagedCredential)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CreateManagedCredentialResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         CreateManagedCredentialResponseBodyDefault)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/managed/credentials") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /managed/credentials
-- 
-- The same as 'createManagedCredential' but returns the raw 'Data.ByteString.Char8.ByteString'
createManagedCredentialRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                            Linode.Common.SecurityScheme s) =>
                              Linode.Common.Configuration s ->
                              GHC.Base.Maybe CreateManagedCredentialRequestBody ->
                              m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
createManagedCredentialRaw config
                           body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/managed/credentials") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /managed/credentials
-- 
-- Monadic version of 'createManagedCredential' (use with 'Linode.Common.runWithConfiguration')
createManagedCredentialM :: forall m s . (Linode.Common.MonadHTTP m,
                                          Linode.Common.SecurityScheme s) =>
                            GHC.Base.Maybe CreateManagedCredentialRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response CreateManagedCredentialResponse))
createManagedCredentialM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either CreateManagedCredentialResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CreateManagedCredentialResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                        ManagedCredential)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CreateManagedCredentialResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          CreateManagedCredentialResponseBodyDefault)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/managed/credentials") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /managed/credentials
-- 
-- Monadic version of 'createManagedCredentialRaw' (use with 'Linode.Common.runWithConfiguration')
createManagedCredentialRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                             Linode.Common.SecurityScheme s) =>
                               GHC.Base.Maybe CreateManagedCredentialRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
createManagedCredentialRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/managed/credentials") [] body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema createManagedCredentialRequestBody
-- 
-- 
data CreateManagedCredentialRequestBody = CreateManagedCredentialRequestBody {
  -- | id: This Credential\'s unique ID.
  createManagedCredentialRequestBodyId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | label: The unique label for this Credential. This is for display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 75
  -- * Minimum length of 2
  -- * Must match pattern \'[a-zA-Z0-9-_ \\.]{2,75}\'
  , createManagedCredentialRequestBodyLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | last_decrypted: The date this Credential was last decrypted by a member of Linode special forces.
  , createManagedCredentialRequestBodyLast_decrypted :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | password: The password to use when accessing the Managed Service.
  , createManagedCredentialRequestBodyPassword :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | username: The username to use when accessing the Managed Service.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Minimum length of 0
  , createManagedCredentialRequestBodyUsername :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreateManagedCredentialRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (createManagedCredentialRequestBodyId obj) : (Data.Aeson..=) "label" (createManagedCredentialRequestBodyLabel obj) : (Data.Aeson..=) "last_decrypted" (createManagedCredentialRequestBodyLast_decrypted obj) : (Data.Aeson..=) "password" (createManagedCredentialRequestBodyPassword obj) : (Data.Aeson..=) "username" (createManagedCredentialRequestBodyUsername obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (createManagedCredentialRequestBodyId obj) GHC.Base.<> ((Data.Aeson..=) "label" (createManagedCredentialRequestBodyLabel obj) GHC.Base.<> ((Data.Aeson..=) "last_decrypted" (createManagedCredentialRequestBodyLast_decrypted obj) GHC.Base.<> ((Data.Aeson..=) "password" (createManagedCredentialRequestBodyPassword obj) GHC.Base.<> (Data.Aeson..=) "username" (createManagedCredentialRequestBodyUsername obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON CreateManagedCredentialRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateManagedCredentialRequestBody" (\obj -> ((((GHC.Base.pure CreateManagedCredentialRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_decrypted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "password")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "username"))
-- | Represents a response of the operation 'createManagedCredential'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CreateManagedCredentialResponseError' is used.
data CreateManagedCredentialResponse =                                                 
   CreateManagedCredentialResponseError GHC.Base.String                                -- ^ Means either no matching case available or a parse error
  | CreateManagedCredentialResponse200 ManagedCredential                               -- ^ Credential created.
  | CreateManagedCredentialResponseDefault CreateManagedCredentialResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema CreateManagedCredentialResponseBodyDefault
-- 
-- 
data CreateManagedCredentialResponseBodyDefault = CreateManagedCredentialResponseBodyDefault {
  -- | errors
  createManagedCredentialResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreateManagedCredentialResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (createManagedCredentialResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (createManagedCredentialResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON CreateManagedCredentialResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateManagedCredentialResponseBodyDefault" (\obj -> GHC.Base.pure CreateManagedCredentialResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
