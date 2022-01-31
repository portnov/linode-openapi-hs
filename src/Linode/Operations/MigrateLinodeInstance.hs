-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation migrateLinodeInstance
module Linode.Operations.MigrateLinodeInstance where

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

-- | > POST /linode/instances/{linodeId}/migrate
-- 
-- Initiate a pending host migration that has been scheduled by Linode or initiate a cross data center (DC) migration.  A list of pending migrations, if any, can be accessed from [GET \/account\/notifications](\/docs\/api\/account\/\#notifications-list). When the migration begins, your Linode will be shutdown if not already off. If the migration initiated the shutdown, it will reboot the Linode when completed.
-- 
-- To initiate a cross DC migration, you must pass a \`region\` parameter to the request body specifying the target data center region. You can view a list of all available regions and their feature capabilities from [GET \/regions](\/docs\/api\/regions\/\#regions-list). If your Linode has a DC migration already queued or you have initiated a previously scheduled migration, you will not be able to initiate a DC migration until it has completed.
-- 
-- **Note:** Next Generation Network (NGN) data centers do not support IPv6 \`\/116\` pools or IP Failover. If you have these features enabled on your Linode and attempt to migrate to an NGN data center, the migration will not initiate. If a Linode cannot be migrated because of an incompatibility, you will be prompted to select a different data center or contact support.
migrateLinodeInstance :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ linodeId: ID of the Linode to migrate.
  -> GHC.Maybe.Maybe MigrateLinodeInstanceRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response MigrateLinodeInstanceResponse) -- ^ Monadic computation which returns the result of the operation
migrateLinodeInstance linodeId
                      body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either MigrateLinodeInstanceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> MigrateLinodeInstanceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Data.Aeson.Types.Internal.Object)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> MigrateLinodeInstanceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                    MigrateLinodeInstanceResponseBodyDefault)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/linode/instances/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel linodeId)) GHC.Base.++ "/migrate"))) GHC.Base.mempty body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/linode\/instances\/{linodeId}\/migrate.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data MigrateLinodeInstanceRequestBody = MigrateLinodeInstanceRequestBody {
  -- | region: The region to which the Linode will be migrated. Must be a valid region slug. A list of regions can be viewed by using the [GET \/regions](\/docs\/api\/regions\/\#regions-list) endpoint. A cross data center migration will cancel a pending migration that has not yet been initiated.
  -- A cross data center migration will initiate a \`linode_migrate_datacenter_create\` event.
  migrateLinodeInstanceRequestBodyRegion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | upgrade: When initiating a cross DC migration, setting this value to true will also ensure that the Linode is upgraded to the latest generation of hardware that corresponds to your Linode\'s Type, if any free upgrades are available for it.
  -- If no free upgrades are available, and this value is set to true, then the endpoint will return a 400 error code and the migration will not be performed.
  -- If the data center set in the \`region\` field does not allow upgrades, then the endpoint will return a 400 error code and the migration will not be performed.
  , migrateLinodeInstanceRequestBodyUpgrade :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON MigrateLinodeInstanceRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("region" Data.Aeson.Types.ToJSON..= migrateLinodeInstanceRequestBodyRegion obj : "upgrade" Data.Aeson.Types.ToJSON..= migrateLinodeInstanceRequestBodyUpgrade obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("region" Data.Aeson.Types.ToJSON..= migrateLinodeInstanceRequestBodyRegion obj) GHC.Base.<> ("upgrade" Data.Aeson.Types.ToJSON..= migrateLinodeInstanceRequestBodyUpgrade obj))
instance Data.Aeson.Types.FromJSON.FromJSON MigrateLinodeInstanceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "MigrateLinodeInstanceRequestBody" (\obj -> (GHC.Base.pure MigrateLinodeInstanceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "upgrade"))
-- | Create a new 'MigrateLinodeInstanceRequestBody' with all required fields.
mkMigrateLinodeInstanceRequestBody :: MigrateLinodeInstanceRequestBody
mkMigrateLinodeInstanceRequestBody = MigrateLinodeInstanceRequestBody{migrateLinodeInstanceRequestBodyRegion = GHC.Maybe.Nothing,
                                                                      migrateLinodeInstanceRequestBodyUpgrade = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'migrateLinodeInstance'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'MigrateLinodeInstanceResponseError' is used.
data MigrateLinodeInstanceResponse =
   MigrateLinodeInstanceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | MigrateLinodeInstanceResponse200 Data.Aeson.Types.Internal.Object -- ^ Scheduled migration started
  | MigrateLinodeInstanceResponseDefault MigrateLinodeInstanceResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data MigrateLinodeInstanceResponseBodyDefault = MigrateLinodeInstanceResponseBodyDefault {
  -- | errors
  migrateLinodeInstanceResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON MigrateLinodeInstanceResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= migrateLinodeInstanceResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= migrateLinodeInstanceResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON MigrateLinodeInstanceResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "MigrateLinodeInstanceResponseBodyDefault" (\obj -> GHC.Base.pure MigrateLinodeInstanceResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'MigrateLinodeInstanceResponseBodyDefault' with all required fields.
mkMigrateLinodeInstanceResponseBodyDefault :: MigrateLinodeInstanceResponseBodyDefault
mkMigrateLinodeInstanceResponseBodyDefault = MigrateLinodeInstanceResponseBodyDefault{migrateLinodeInstanceResponseBodyDefaultErrors = GHC.Maybe.Nothing}
