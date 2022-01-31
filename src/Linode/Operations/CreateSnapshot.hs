-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation createSnapshot
module Linode.Operations.CreateSnapshot where

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

-- | > POST /linode/instances/{linodeId}/backups
-- 
-- Creates a snapshot Backup of a Linode.
-- 
-- **Important:** If you already have a snapshot of this Linode, this is a destructive
-- action. The previous snapshot will be deleted.
createSnapshot :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ linodeId: The ID of the Linode the backups belong to.
  -> CreateSnapshotRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response CreateSnapshotResponse) -- ^ Monadic computation which returns the result of the operation
createSnapshot linodeId
               body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either CreateSnapshotResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> CreateSnapshotResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             Backup)
                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> CreateSnapshotResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                               CreateSnapshotResponseBodyDefault)
                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/linode/instances/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel linodeId)) GHC.Base.++ "/backups"))) GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/linode\/instances\/{linodeId}\/backups.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data CreateSnapshotRequestBody = CreateSnapshotRequestBody {
  -- | label: The label for the new snapshot.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 255
  -- * Minimum length of 1
  createSnapshotRequestBodyLabel :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateSnapshotRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("label" Data.Aeson.Types.ToJSON..= createSnapshotRequestBodyLabel obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("label" Data.Aeson.Types.ToJSON..= createSnapshotRequestBodyLabel obj)
instance Data.Aeson.Types.FromJSON.FromJSON CreateSnapshotRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateSnapshotRequestBody" (\obj -> GHC.Base.pure CreateSnapshotRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "label"))
-- | Create a new 'CreateSnapshotRequestBody' with all required fields.
mkCreateSnapshotRequestBody :: Data.Text.Internal.Text -- ^ 'createSnapshotRequestBodyLabel'
  -> CreateSnapshotRequestBody
mkCreateSnapshotRequestBody createSnapshotRequestBodyLabel = CreateSnapshotRequestBody{createSnapshotRequestBodyLabel = createSnapshotRequestBodyLabel}
-- | Represents a response of the operation 'createSnapshot'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'CreateSnapshotResponseError' is used.
data CreateSnapshotResponse =
   CreateSnapshotResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | CreateSnapshotResponse200 Backup -- ^ Snapshot request successful.
  | CreateSnapshotResponseDefault CreateSnapshotResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data CreateSnapshotResponseBodyDefault = CreateSnapshotResponseBodyDefault {
  -- | errors
  createSnapshotResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreateSnapshotResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= createSnapshotResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= createSnapshotResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON CreateSnapshotResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CreateSnapshotResponseBodyDefault" (\obj -> GHC.Base.pure CreateSnapshotResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'CreateSnapshotResponseBodyDefault' with all required fields.
mkCreateSnapshotResponseBodyDefault :: CreateSnapshotResponseBodyDefault
mkCreateSnapshotResponseBodyDefault = CreateSnapshotResponseBodyDefault{createSnapshotResponseBodyDefaultErrors = GHC.Maybe.Nothing}
