-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation createEntityTransfer
module Linode.Operations.CreateEntityTransfer where

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

-- | > POST /account/entity-transfers
-- 
-- **DEPRECATED**. Please use [Service Transfer Create](\/docs\/api\/account\/\#service-transfer-create).
createEntityTransfer :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.Maybe CreateEntityTransferRequestBody                                                                                   -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response CreateEntityTransferResponse)) -- ^ Monad containing the result of the operation
createEntityTransfer config
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either CreateEntityTransferResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CreateEntityTransferResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              EntityTransfer)
                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CreateEntityTransferResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                CreateEntityTransferResponseBodyDefault)
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/account/entity-transfers") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /account/entity-transfers
-- 
-- The same as 'createEntityTransfer' but returns the raw 'Data.ByteString.Char8.ByteString'
createEntityTransferRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                         Linode.Common.SecurityScheme s) =>
                           Linode.Common.Configuration s ->
                           GHC.Base.Maybe CreateEntityTransferRequestBody ->
                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
createEntityTransferRaw config
                        body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/account/entity-transfers") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /account/entity-transfers
-- 
-- Monadic version of 'createEntityTransfer' (use with 'Linode.Common.runWithConfiguration')
createEntityTransferM :: forall m s . (Linode.Common.MonadHTTP m,
                                       Linode.Common.SecurityScheme s) =>
                         GHC.Base.Maybe CreateEntityTransferRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response CreateEntityTransferResponse))
createEntityTransferM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either CreateEntityTransferResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CreateEntityTransferResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                               EntityTransfer)
                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CreateEntityTransferResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                 CreateEntityTransferResponseBodyDefault)
                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/account/entity-transfers") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /account/entity-transfers
-- 
-- Monadic version of 'createEntityTransferRaw' (use with 'Linode.Common.runWithConfiguration')
createEntityTransferRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                          Linode.Common.SecurityScheme s) =>
                            GHC.Base.Maybe CreateEntityTransferRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
createEntityTransferRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/account/entity-transfers") [] body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema createEntityTransferRequestBody
-- 
-- 
data CreateEntityTransferRequestBody = CreateEntityTransferRequestBody {
  -- | entities
  createEntityTransferRequestBodyEntities :: EntityTransfer_properties_entities
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreateEntityTransferRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "entities" (createEntityTransferRequestBodyEntities obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "entities" (createEntityTransferRequestBodyEntities obj))
instance Data.Aeson.Types.FromJSON.FromJSON CreateEntityTransferRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateEntityTransferRequestBody" (\obj -> GHC.Base.pure CreateEntityTransferRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "entities"))
-- | Represents a response of the operation 'createEntityTransfer'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CreateEntityTransferResponseError' is used.
data CreateEntityTransferResponse =                                              
   CreateEntityTransferResponseError GHC.Base.String                             -- ^ Means either no matching case available or a parse error
  | CreateEntityTransferResponse200 EntityTransfer                               -- ^ Returns an Entity Transfer object for the request. 
  | CreateEntityTransferResponseDefault CreateEntityTransferResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema CreateEntityTransferResponseBodyDefault
-- 
-- 
data CreateEntityTransferResponseBodyDefault = CreateEntityTransferResponseBodyDefault {
  -- | errors
  createEntityTransferResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreateEntityTransferResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (createEntityTransferResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (createEntityTransferResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON CreateEntityTransferResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateEntityTransferResponseBodyDefault" (\obj -> GHC.Base.pure CreateEntityTransferResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
