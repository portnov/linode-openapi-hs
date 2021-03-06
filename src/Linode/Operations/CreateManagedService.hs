-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation createManagedService
module Linode.Operations.CreateManagedService where

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

-- | > POST /managed/services
-- 
-- Creates a Managed Service. Linode Managed will begin monitoring this service and reporting and attempting to resolve any Issues.
createManagedService :: forall m . Linode.Common.MonadHTTP m => GHC.Maybe.Maybe CreateManagedServiceRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response CreateManagedServiceResponse) -- ^ Monadic computation which returns the result of the operation
createManagedService body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either CreateManagedServiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CreateManagedServiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               ManagedService)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CreateManagedServiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 CreateManagedServiceResponseBodyDefault)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/managed/services") GHC.Base.mempty body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/managed\/services.POST.requestBody.content.application\/json.schema.allOf@ in the specification.
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
  createManagedServiceRequestBodyAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | body: What to expect to find in the response body for the Service to be considered up.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  -- * Minimum length of 0
  , createManagedServiceRequestBodyBody :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | consultation_group: The group of ManagedContacts who should be notified or consulted with when an Issue is detected.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 50
  -- * Minimum length of 0
  , createManagedServiceRequestBodyConsultationGroup :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | created: When this Managed Service was created.
  , createManagedServiceRequestBodyCreated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | credentials: An array of ManagedCredential IDs that should be used when attempting to resolve issues with this Service.
  , createManagedServiceRequestBodyCredentials :: (GHC.Maybe.Maybe ([GHC.Types.Int]))
  -- | id: This Service\'s unique ID.
  , createManagedServiceRequestBodyId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | label: The label for this Service. This is for display purposes only.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 64
  -- * Minimum length of 3
  -- * Must match pattern \'[a-zA-Z0-9-_ \\.]{3,64}\'
  , createManagedServiceRequestBodyLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | notes: Any information relevant to the Service that Linode special forces should know when attempting to resolve Issues.
  , createManagedServiceRequestBodyNotes :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | region: The Region in which this Service is located. This is required if address is a private IP, and may not be set otherwise.
  , createManagedServiceRequestBodyRegion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | service_type: How this Service is monitored.
  , createManagedServiceRequestBodyServiceType :: (GHC.Maybe.Maybe CreateManagedServiceRequestBodyServiceType')
  -- | status: The current status of this Service.
  , createManagedServiceRequestBodyStatus :: (GHC.Maybe.Maybe CreateManagedServiceRequestBodyStatus')
  -- | timeout: How long to wait, in seconds, for a response before considering the Service to be down.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 255.0
  -- * Minimum  of 1.0
  , createManagedServiceRequestBodyTimeout :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | updated: When this Managed Service was last updated.
  , createManagedServiceRequestBodyUpdated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateManagedServiceRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyAddress obj : "body" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyBody obj : "consultation_group" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyConsultationGroup obj : "created" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyCreated obj : "credentials" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyCredentials obj : "id" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyId obj : "label" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyLabel obj : "notes" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyNotes obj : "region" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyRegion obj : "service_type" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyServiceType obj : "status" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyStatus obj : "timeout" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyTimeout obj : "updated" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyUpdated obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyAddress obj) GHC.Base.<> (("body" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyBody obj) GHC.Base.<> (("consultation_group" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyConsultationGroup obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyCreated obj) GHC.Base.<> (("credentials" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyCredentials obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyId obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyLabel obj) GHC.Base.<> (("notes" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyNotes obj) GHC.Base.<> (("region" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyRegion obj) GHC.Base.<> (("service_type" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyServiceType obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyStatus obj) GHC.Base.<> (("timeout" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyTimeout obj) GHC.Base.<> ("updated" Data.Aeson.Types.ToJSON..= createManagedServiceRequestBodyUpdated obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON CreateManagedServiceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateManagedServiceRequestBody" (\obj -> ((((((((((((GHC.Base.pure CreateManagedServiceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "body")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "consultation_group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "credentials")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "notes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "timeout")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated"))
-- | Create a new 'CreateManagedServiceRequestBody' with all required fields.
mkCreateManagedServiceRequestBody :: CreateManagedServiceRequestBody
mkCreateManagedServiceRequestBody = CreateManagedServiceRequestBody{createManagedServiceRequestBodyAddress = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyBody = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyConsultationGroup = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyCreated = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyCredentials = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyId = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyLabel = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyNotes = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyRegion = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyServiceType = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyStatus = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyTimeout = GHC.Maybe.Nothing,
                                                                    createManagedServiceRequestBodyUpdated = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/managed\/services.POST.requestBody.content.application\/json.schema.allOf.properties.service_type@ in the specification.
-- 
-- How this Service is monitored.
data CreateManagedServiceRequestBodyServiceType' =
   CreateManagedServiceRequestBodyServiceType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CreateManagedServiceRequestBodyServiceType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CreateManagedServiceRequestBodyServiceType'EnumUrl -- ^ Represents the JSON value @"url"@
  | CreateManagedServiceRequestBodyServiceType'EnumTcp -- ^ Represents the JSON value @"tcp"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateManagedServiceRequestBodyServiceType'
    where toJSON (CreateManagedServiceRequestBodyServiceType'Other val) = val
          toJSON (CreateManagedServiceRequestBodyServiceType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (CreateManagedServiceRequestBodyServiceType'EnumUrl) = "url"
          toJSON (CreateManagedServiceRequestBodyServiceType'EnumTcp) = "tcp"
instance Data.Aeson.Types.FromJSON.FromJSON CreateManagedServiceRequestBodyServiceType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "url" -> CreateManagedServiceRequestBodyServiceType'EnumUrl
                                            | val GHC.Classes.== "tcp" -> CreateManagedServiceRequestBodyServiceType'EnumTcp
                                            | GHC.Base.otherwise -> CreateManagedServiceRequestBodyServiceType'Other val)
-- | Defines the enum schema located at @paths.\/managed\/services.POST.requestBody.content.application\/json.schema.allOf.properties.status@ in the specification.
-- 
-- The current status of this Service.
data CreateManagedServiceRequestBodyStatus' =
   CreateManagedServiceRequestBodyStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CreateManagedServiceRequestBodyStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CreateManagedServiceRequestBodyStatus'EnumDisabled -- ^ Represents the JSON value @"disabled"@
  | CreateManagedServiceRequestBodyStatus'EnumPending -- ^ Represents the JSON value @"pending"@
  | CreateManagedServiceRequestBodyStatus'EnumOk -- ^ Represents the JSON value @"ok"@
  | CreateManagedServiceRequestBodyStatus'EnumProblem -- ^ Represents the JSON value @"problem"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateManagedServiceRequestBodyStatus'
    where toJSON (CreateManagedServiceRequestBodyStatus'Other val) = val
          toJSON (CreateManagedServiceRequestBodyStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (CreateManagedServiceRequestBodyStatus'EnumDisabled) = "disabled"
          toJSON (CreateManagedServiceRequestBodyStatus'EnumPending) = "pending"
          toJSON (CreateManagedServiceRequestBodyStatus'EnumOk) = "ok"
          toJSON (CreateManagedServiceRequestBodyStatus'EnumProblem) = "problem"
instance Data.Aeson.Types.FromJSON.FromJSON CreateManagedServiceRequestBodyStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "disabled" -> CreateManagedServiceRequestBodyStatus'EnumDisabled
                                            | val GHC.Classes.== "pending" -> CreateManagedServiceRequestBodyStatus'EnumPending
                                            | val GHC.Classes.== "ok" -> CreateManagedServiceRequestBodyStatus'EnumOk
                                            | val GHC.Classes.== "problem" -> CreateManagedServiceRequestBodyStatus'EnumProblem
                                            | GHC.Base.otherwise -> CreateManagedServiceRequestBodyStatus'Other val)
-- | Represents a response of the operation 'createManagedService'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CreateManagedServiceResponseError' is used.
data CreateManagedServiceResponse =
   CreateManagedServiceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | CreateManagedServiceResponse200 ManagedService -- ^ Service created.
  | CreateManagedServiceResponseDefault CreateManagedServiceResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data CreateManagedServiceResponseBodyDefault = CreateManagedServiceResponseBodyDefault {
  -- | errors
  createManagedServiceResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateManagedServiceResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= createManagedServiceResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= createManagedServiceResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON CreateManagedServiceResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateManagedServiceResponseBodyDefault" (\obj -> GHC.Base.pure CreateManagedServiceResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'CreateManagedServiceResponseBodyDefault' with all required fields.
mkCreateManagedServiceResponseBodyDefault :: CreateManagedServiceResponseBodyDefault
mkCreateManagedServiceResponseBodyDefault = CreateManagedServiceResponseBodyDefault{createManagedServiceResponseBodyDefaultErrors = GHC.Maybe.Nothing}
