-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation resizeLinodeInstance
module Linode.Operations.ResizeLinodeInstance where

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

-- | > POST /linode/instances/{linodeId}/resize
-- 
-- Resizes a Linode you have the \`read_write\` permission to a different Type. If any actions are currently running or queued, those actions must be completed first before you can initiate a resize. Additionally, the following criteria must be met in order to resize a Linode:
-- 
--   * The Linode must not have a pending migration.
--   * Your Account cannot have an outstanding balance.
--   * The Linode must not have more disk allocation than the new Type allows.
--     * In that situation, you must first delete or resize the disk to be smaller.
resizeLinodeInstance :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ linodeId: ID of the Linode to resize.
  -> ResizeLinodeInstanceRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response ResizeLinodeInstanceResponse) -- ^ Monadic computation which returns the result of the operation
resizeLinodeInstance linodeId
                     body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ResizeLinodeInstanceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ResizeLinodeInstanceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Data.Aeson.Types.Internal.Object)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ResizeLinodeInstanceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 ResizeLinodeInstanceResponseBodyDefault)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/linode/instances/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel linodeId)) GHC.Base.++ "/resize"))) GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/linode\/instances\/{linodeId}\/resize.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data ResizeLinodeInstanceRequestBody = ResizeLinodeInstanceRequestBody {
  -- | allow_auto_disk_resize: Automatically resize disks when resizing a Linode. When resizing down to a smaller plan your Linode\'s data must fit within the smaller disk size.
  resizeLinodeInstanceRequestBodyAllowAutoDiskResize :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | type: The ID representing the Linode Type.
  , resizeLinodeInstanceRequestBodyType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ResizeLinodeInstanceRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("allow_auto_disk_resize" Data.Aeson.Types.ToJSON..= resizeLinodeInstanceRequestBodyAllowAutoDiskResize obj : "type" Data.Aeson.Types.ToJSON..= resizeLinodeInstanceRequestBodyType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allow_auto_disk_resize" Data.Aeson.Types.ToJSON..= resizeLinodeInstanceRequestBodyAllowAutoDiskResize obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= resizeLinodeInstanceRequestBodyType obj))
instance Data.Aeson.Types.FromJSON.FromJSON ResizeLinodeInstanceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ResizeLinodeInstanceRequestBody" (\obj -> (GHC.Base.pure ResizeLinodeInstanceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allow_auto_disk_resize")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'ResizeLinodeInstanceRequestBody' with all required fields.
mkResizeLinodeInstanceRequestBody :: Data.Text.Internal.Text -- ^ 'resizeLinodeInstanceRequestBodyType'
  -> ResizeLinodeInstanceRequestBody
mkResizeLinodeInstanceRequestBody resizeLinodeInstanceRequestBodyType = ResizeLinodeInstanceRequestBody{resizeLinodeInstanceRequestBodyAllowAutoDiskResize = GHC.Maybe.Nothing,
                                                                                                        resizeLinodeInstanceRequestBodyType = resizeLinodeInstanceRequestBodyType}
-- | Represents a response of the operation 'resizeLinodeInstance'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ResizeLinodeInstanceResponseError' is used.
data ResizeLinodeInstanceResponse =
   ResizeLinodeInstanceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | ResizeLinodeInstanceResponse200 Data.Aeson.Types.Internal.Object -- ^ Resize started.
  | ResizeLinodeInstanceResponseDefault ResizeLinodeInstanceResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data ResizeLinodeInstanceResponseBodyDefault = ResizeLinodeInstanceResponseBodyDefault {
  -- | errors
  resizeLinodeInstanceResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ResizeLinodeInstanceResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= resizeLinodeInstanceResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= resizeLinodeInstanceResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON ResizeLinodeInstanceResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ResizeLinodeInstanceResponseBodyDefault" (\obj -> GHC.Base.pure ResizeLinodeInstanceResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'ResizeLinodeInstanceResponseBodyDefault' with all required fields.
mkResizeLinodeInstanceResponseBodyDefault :: ResizeLinodeInstanceResponseBodyDefault
mkResizeLinodeInstanceResponseBodyDefault = ResizeLinodeInstanceResponseBodyDefault{resizeLinodeInstanceResponseBodyDefaultErrors = GHC.Maybe.Nothing}
