-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation deleteLinodeConfig
module Linode.Operations.DeleteLinodeConfig where

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

-- | > DELETE /linode/instances/{linodeId}/configs/{configId}
-- 
-- Deletes the specified Configuration profile from the specified Linode.
deleteLinodeConfig :: forall m . Linode.Common.MonadHTTP m => DeleteLinodeConfigParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteLinodeConfigResponse) -- ^ Monadic computation which returns the result of the operation
deleteLinodeConfig parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteLinodeConfigResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteLinodeConfigResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Data.Aeson.Types.Internal.Object)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteLinodeConfigResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 DeleteLinodeConfigResponseBodyDefault)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack (("/linode/instances/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (deleteLinodeConfigParametersPathLinodeId parameters))) GHC.Base.++ "/configs/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (deleteLinodeConfigParametersPathConfigId parameters))) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/linode\/instances\/{linodeId}\/configs\/{configId}.DELETE.parameters@ in the specification.
-- 
-- 
data DeleteLinodeConfigParameters = DeleteLinodeConfigParameters {
  -- | pathConfigId: Represents the parameter named \'configId\'
  -- 
  -- The ID of the Configuration profile to look up.
  deleteLinodeConfigParametersPathConfigId :: GHC.Types.Int
  -- | pathLinodeId: Represents the parameter named \'linodeId\'
  -- 
  -- The ID of the Linode whose Configuration profile to look up.
  , deleteLinodeConfigParametersPathLinodeId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteLinodeConfigParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathConfigId" Data.Aeson.Types.ToJSON..= deleteLinodeConfigParametersPathConfigId obj : "pathLinodeId" Data.Aeson.Types.ToJSON..= deleteLinodeConfigParametersPathLinodeId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathConfigId" Data.Aeson.Types.ToJSON..= deleteLinodeConfigParametersPathConfigId obj) GHC.Base.<> ("pathLinodeId" Data.Aeson.Types.ToJSON..= deleteLinodeConfigParametersPathLinodeId obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteLinodeConfigParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteLinodeConfigParameters" (\obj -> (GHC.Base.pure DeleteLinodeConfigParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathConfigId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathLinodeId"))
-- | Create a new 'DeleteLinodeConfigParameters' with all required fields.
mkDeleteLinodeConfigParameters :: GHC.Types.Int -- ^ 'deleteLinodeConfigParametersPathConfigId'
  -> GHC.Types.Int -- ^ 'deleteLinodeConfigParametersPathLinodeId'
  -> DeleteLinodeConfigParameters
mkDeleteLinodeConfigParameters deleteLinodeConfigParametersPathConfigId deleteLinodeConfigParametersPathLinodeId = DeleteLinodeConfigParameters{deleteLinodeConfigParametersPathConfigId = deleteLinodeConfigParametersPathConfigId,
                                                                                                                                                deleteLinodeConfigParametersPathLinodeId = deleteLinodeConfigParametersPathLinodeId}
-- | Represents a response of the operation 'deleteLinodeConfig'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteLinodeConfigResponseError' is used.
data DeleteLinodeConfigResponse =
   DeleteLinodeConfigResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | DeleteLinodeConfigResponse200 Data.Aeson.Types.Internal.Object -- ^ Configuration profile successfully deleted. 
  | DeleteLinodeConfigResponseDefault DeleteLinodeConfigResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data DeleteLinodeConfigResponseBodyDefault = DeleteLinodeConfigResponseBodyDefault {
  -- | errors
  deleteLinodeConfigResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteLinodeConfigResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= deleteLinodeConfigResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= deleteLinodeConfigResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON DeleteLinodeConfigResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteLinodeConfigResponseBodyDefault" (\obj -> GHC.Base.pure DeleteLinodeConfigResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'DeleteLinodeConfigResponseBodyDefault' with all required fields.
mkDeleteLinodeConfigResponseBodyDefault :: DeleteLinodeConfigResponseBodyDefault
mkDeleteLinodeConfigResponseBodyDefault = DeleteLinodeConfigResponseBodyDefault{deleteLinodeConfigResponseBodyDefaultErrors = GHC.Maybe.Nothing}
