-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation createManagedService
module Linode.Operations.CreateManagedService where

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

-- | > POST /managed/services
-- 
-- Creates a Managed Service. Linode Managed will begin monitoring this service and reporting and attempting to resolve any Issues.
createManagedService :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.Maybe CreateManagedServiceRequestBody                                                                                   -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response CreateManagedServiceResponse)) -- ^ Monad containing the result of the operation
createManagedService config
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either CreateManagedServiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CreateManagedServiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              ManagedService)
                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CreateManagedServiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                CreateManagedServiceResponseBodyDefault)
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/managed/services") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /managed/services
-- 
-- The same as 'createManagedService' but returns the raw 'Data.ByteString.Char8.ByteString'
createManagedServiceRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                         Linode.Common.SecurityScheme s) =>
                           Linode.Common.Configuration s ->
                           GHC.Base.Maybe CreateManagedServiceRequestBody ->
                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
createManagedServiceRaw config
                        body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/managed/services") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /managed/services
-- 
-- Monadic version of 'createManagedService' (use with 'Linode.Common.runWithConfiguration')
createManagedServiceM :: forall m s . (Linode.Common.MonadHTTP m,
                                       Linode.Common.SecurityScheme s) =>
                         GHC.Base.Maybe CreateManagedServiceRequestBody ->
                         Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                            m
                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                (Network.HTTP.Client.Types.Response CreateManagedServiceResponse))
createManagedServiceM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either CreateManagedServiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CreateManagedServiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                               ManagedService)
                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CreateManagedServiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                 CreateManagedServiceResponseBodyDefault)
                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/managed/services") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > POST /managed/services
-- 
-- Monadic version of 'createManagedServiceRaw' (use with 'Linode.Common.runWithConfiguration')
createManagedServiceRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                          Linode.Common.SecurityScheme s) =>
                            GHC.Base.Maybe CreateManagedServiceRequestBody ->
                            Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                               m
                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
createManagedServiceRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/managed/services") [] body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema createManagedServiceRequestBody
-- 
-- 
data CreateManagedServiceRequestBody = CreateManagedServiceRequestBody {
  -- | address: The URL at which this Service is monitored.
  -- 
  -- URL parameters such as \`?no-cache=1\` are preserved.
  -- 
  -- URL fragments\/anchors such as \`\#monitor\` are **not** preserved.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Minimum length of 3
  createManagedServiceRequestBodyAddress :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | body: What to expect to find in the response body for the Service to be considered up.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  -- * Minimum length of 0
  , createManagedServiceRequestBodyBody :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | consultation_group: The group of ManagedContacts who should be notified or consulted with when an Issue is detected.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 50
  -- * Minimum length of 0
  , createManagedServiceRequestBodyConsultation_group :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | created: When this Managed Service was created.
  , createManagedServiceRequestBodyCreated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | credentials: An array of ManagedCredential IDs that should be used when attempting to resolve issues with this Service.
  , createManagedServiceRequestBodyCredentials :: (GHC.Base.Maybe ([] GHC.Integer.Type.Integer))
  -- | id: This Service\'s unique ID.
  , createManagedServiceRequestBodyId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | label: The label for this Service. This is for display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 64
  -- * Minimum length of 3
  -- * Must match pattern \'[a-zA-Z0-9-_ \\.]{3,64}\'
  , createManagedServiceRequestBodyLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | notes: Any information relevant to the Service that Linode special forces should know when attempting to resolve Issues.
  , createManagedServiceRequestBodyNotes :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | region: The Region in which this Service is located. This is required if address is a private IP, and may not be set otherwise.
  , createManagedServiceRequestBodyRegion :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | service_type: How this Service is monitored.
  , createManagedServiceRequestBodyService_type :: (GHC.Base.Maybe CreateManagedServiceRequestBodyService_type)
  -- | status: The current status of this Service.
  , createManagedServiceRequestBodyStatus :: (GHC.Base.Maybe CreateManagedServiceRequestBodyStatus)
  -- | timeout: How long to wait, in seconds, for a response before considering the Service to be down.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 255.0
  -- * Minimum  of 1.0
  , createManagedServiceRequestBodyTimeout :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | updated: When this Managed Service was last updated.
  , createManagedServiceRequestBodyUpdated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreateManagedServiceRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (createManagedServiceRequestBodyAddress obj) : (Data.Aeson..=) "body" (createManagedServiceRequestBodyBody obj) : (Data.Aeson..=) "consultation_group" (createManagedServiceRequestBodyConsultation_group obj) : (Data.Aeson..=) "created" (createManagedServiceRequestBodyCreated obj) : (Data.Aeson..=) "credentials" (createManagedServiceRequestBodyCredentials obj) : (Data.Aeson..=) "id" (createManagedServiceRequestBodyId obj) : (Data.Aeson..=) "label" (createManagedServiceRequestBodyLabel obj) : (Data.Aeson..=) "notes" (createManagedServiceRequestBodyNotes obj) : (Data.Aeson..=) "region" (createManagedServiceRequestBodyRegion obj) : (Data.Aeson..=) "service_type" (createManagedServiceRequestBodyService_type obj) : (Data.Aeson..=) "status" (createManagedServiceRequestBodyStatus obj) : (Data.Aeson..=) "timeout" (createManagedServiceRequestBodyTimeout obj) : (Data.Aeson..=) "updated" (createManagedServiceRequestBodyUpdated obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (createManagedServiceRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "body" (createManagedServiceRequestBodyBody obj) GHC.Base.<> ((Data.Aeson..=) "consultation_group" (createManagedServiceRequestBodyConsultation_group obj) GHC.Base.<> ((Data.Aeson..=) "created" (createManagedServiceRequestBodyCreated obj) GHC.Base.<> ((Data.Aeson..=) "credentials" (createManagedServiceRequestBodyCredentials obj) GHC.Base.<> ((Data.Aeson..=) "id" (createManagedServiceRequestBodyId obj) GHC.Base.<> ((Data.Aeson..=) "label" (createManagedServiceRequestBodyLabel obj) GHC.Base.<> ((Data.Aeson..=) "notes" (createManagedServiceRequestBodyNotes obj) GHC.Base.<> ((Data.Aeson..=) "region" (createManagedServiceRequestBodyRegion obj) GHC.Base.<> ((Data.Aeson..=) "service_type" (createManagedServiceRequestBodyService_type obj) GHC.Base.<> ((Data.Aeson..=) "status" (createManagedServiceRequestBodyStatus obj) GHC.Base.<> ((Data.Aeson..=) "timeout" (createManagedServiceRequestBodyTimeout obj) GHC.Base.<> (Data.Aeson..=) "updated" (createManagedServiceRequestBodyUpdated obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CreateManagedServiceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateManagedServiceRequestBody" (\obj -> ((((((((((((GHC.Base.pure CreateManagedServiceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "body")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "consultation_group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "credentials")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "notes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "timeout")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated"))
-- | Defines the enum schema createManagedServiceRequestBodyService_type
-- 
-- How this Service is monitored.
data CreateManagedServiceRequestBodyService_type
    = CreateManagedServiceRequestBodyService_typeEnumOther Data.Aeson.Types.Internal.Value
    | CreateManagedServiceRequestBodyService_typeEnumTyped Data.Text.Internal.Text
    | CreateManagedServiceRequestBodyService_typeEnumString_tcp
    | CreateManagedServiceRequestBodyService_typeEnumString_url
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreateManagedServiceRequestBodyService_type
    where toJSON (CreateManagedServiceRequestBodyService_typeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CreateManagedServiceRequestBodyService_typeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CreateManagedServiceRequestBodyService_typeEnumString_tcp) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tcp"
          toJSON (CreateManagedServiceRequestBodyService_typeEnumString_url) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "url"
instance Data.Aeson.FromJSON CreateManagedServiceRequestBodyService_type
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tcp")
                                          then CreateManagedServiceRequestBodyService_typeEnumString_tcp
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "url")
                                                then CreateManagedServiceRequestBodyService_typeEnumString_url
                                                else CreateManagedServiceRequestBodyService_typeEnumOther val)
-- | Defines the enum schema createManagedServiceRequestBodyStatus
-- 
-- The current status of this Service.
data CreateManagedServiceRequestBodyStatus
    = CreateManagedServiceRequestBodyStatusEnumOther Data.Aeson.Types.Internal.Value
    | CreateManagedServiceRequestBodyStatusEnumTyped Data.Text.Internal.Text
    | CreateManagedServiceRequestBodyStatusEnumString_disabled
    | CreateManagedServiceRequestBodyStatusEnumString_ok
    | CreateManagedServiceRequestBodyStatusEnumString_pending
    | CreateManagedServiceRequestBodyStatusEnumString_problem
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreateManagedServiceRequestBodyStatus
    where toJSON (CreateManagedServiceRequestBodyStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CreateManagedServiceRequestBodyStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (CreateManagedServiceRequestBodyStatusEnumString_disabled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "disabled"
          toJSON (CreateManagedServiceRequestBodyStatusEnumString_ok) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ok"
          toJSON (CreateManagedServiceRequestBodyStatusEnumString_pending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
          toJSON (CreateManagedServiceRequestBodyStatusEnumString_problem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "problem"
instance Data.Aeson.FromJSON CreateManagedServiceRequestBodyStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "disabled")
                                          then CreateManagedServiceRequestBodyStatusEnumString_disabled
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ok")
                                                then CreateManagedServiceRequestBodyStatusEnumString_ok
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                                      then CreateManagedServiceRequestBodyStatusEnumString_pending
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "problem")
                                                            then CreateManagedServiceRequestBodyStatusEnumString_problem
                                                            else CreateManagedServiceRequestBodyStatusEnumOther val)
-- | Represents a response of the operation 'createManagedService'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CreateManagedServiceResponseError' is used.
data CreateManagedServiceResponse =                                              
   CreateManagedServiceResponseError GHC.Base.String                             -- ^ Means either no matching case available or a parse error
  | CreateManagedServiceResponse200 ManagedService                               -- ^ Service created.
  | CreateManagedServiceResponseDefault CreateManagedServiceResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema CreateManagedServiceResponseBodyDefault
-- 
-- 
data CreateManagedServiceResponseBodyDefault = CreateManagedServiceResponseBodyDefault {
  -- | errors
  createManagedServiceResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON CreateManagedServiceResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (createManagedServiceResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (createManagedServiceResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON CreateManagedServiceResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateManagedServiceResponseBodyDefault" (\obj -> GHC.Base.pure CreateManagedServiceResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))