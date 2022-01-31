-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation deleteFirewallDevice
module Linode.Operations.DeleteFirewallDevice where

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

-- | > DELETE /networking/firewalls/{firewallId}/devices/{deviceId}
-- 
-- Removes a Firewall Device, which removes a Firewall from the Linode service it was
-- assigned to by the Device. This will remove all of the Firewall\'s Rules from the Linode
-- service. If any other Firewalls have been assigned to the Linode service, then those Rules
-- will remain in effect.
-- 
-- A \`firewall_device_remove\` Event is generated when the Firewall Device is removed successfully.
deleteFirewallDevice :: forall m . Linode.Common.MonadHTTP m => DeleteFirewallDeviceParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteFirewallDeviceResponse) -- ^ Monadic computation which returns the result of the operation
deleteFirewallDevice parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteFirewallDeviceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteFirewallDeviceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Data.Aeson.Types.Internal.Object)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteFirewallDeviceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       DeleteFirewallDeviceResponseBodyDefault)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack (("/networking/firewalls/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (deleteFirewallDeviceParametersPathFirewallId parameters))) GHC.Base.++ "/devices/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (deleteFirewallDeviceParametersPathDeviceId parameters))) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/networking\/firewalls\/{firewallId}\/devices\/{deviceId}.DELETE.parameters@ in the specification.
-- 
-- 
data DeleteFirewallDeviceParameters = DeleteFirewallDeviceParameters {
  -- | pathDeviceId: Represents the parameter named \'deviceId\'
  -- 
  -- ID of the Firewall Device to access.
  deleteFirewallDeviceParametersPathDeviceId :: GHC.Types.Int
  -- | pathFirewallId: Represents the parameter named \'firewallId\'
  -- 
  -- ID of the Firewall to access.
  , deleteFirewallDeviceParametersPathFirewallId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteFirewallDeviceParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathDeviceId" Data.Aeson.Types.ToJSON..= deleteFirewallDeviceParametersPathDeviceId obj : "pathFirewallId" Data.Aeson.Types.ToJSON..= deleteFirewallDeviceParametersPathFirewallId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathDeviceId" Data.Aeson.Types.ToJSON..= deleteFirewallDeviceParametersPathDeviceId obj) GHC.Base.<> ("pathFirewallId" Data.Aeson.Types.ToJSON..= deleteFirewallDeviceParametersPathFirewallId obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteFirewallDeviceParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteFirewallDeviceParameters" (\obj -> (GHC.Base.pure DeleteFirewallDeviceParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDeviceId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathFirewallId"))
-- | Create a new 'DeleteFirewallDeviceParameters' with all required fields.
mkDeleteFirewallDeviceParameters :: GHC.Types.Int -- ^ 'deleteFirewallDeviceParametersPathDeviceId'
  -> GHC.Types.Int -- ^ 'deleteFirewallDeviceParametersPathFirewallId'
  -> DeleteFirewallDeviceParameters
mkDeleteFirewallDeviceParameters deleteFirewallDeviceParametersPathDeviceId deleteFirewallDeviceParametersPathFirewallId = DeleteFirewallDeviceParameters{deleteFirewallDeviceParametersPathDeviceId = deleteFirewallDeviceParametersPathDeviceId,
                                                                                                                                                          deleteFirewallDeviceParametersPathFirewallId = deleteFirewallDeviceParametersPathFirewallId}
-- | Represents a response of the operation 'deleteFirewallDevice'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteFirewallDeviceResponseError' is used.
data DeleteFirewallDeviceResponse =
   DeleteFirewallDeviceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | DeleteFirewallDeviceResponse200 Data.Aeson.Types.Internal.Object -- ^ Delete Successful.
  | DeleteFirewallDeviceResponseDefault DeleteFirewallDeviceResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data DeleteFirewallDeviceResponseBodyDefault = DeleteFirewallDeviceResponseBodyDefault {
  -- | errors
  deleteFirewallDeviceResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteFirewallDeviceResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= deleteFirewallDeviceResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= deleteFirewallDeviceResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON DeleteFirewallDeviceResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteFirewallDeviceResponseBodyDefault" (\obj -> GHC.Base.pure DeleteFirewallDeviceResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'DeleteFirewallDeviceResponseBodyDefault' with all required fields.
mkDeleteFirewallDeviceResponseBodyDefault :: DeleteFirewallDeviceResponseBodyDefault
mkDeleteFirewallDeviceResponseBodyDefault = DeleteFirewallDeviceResponseBodyDefault{deleteFirewallDeviceResponseBodyDefaultErrors = GHC.Maybe.Nothing}
