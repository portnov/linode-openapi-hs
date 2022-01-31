-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation shareIPv4s
module Linode.Operations.ShareIPv4s where

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

-- | > POST /networking/ipv4/share
-- 
-- Configure shared IPs.  A shared IP may be brought up on a Linode other than the one it lists in its response.  This can be used to allow one Linode to begin serving requests should another become unresponsive.
shareIPv4s :: forall m . Linode.Common.MonadHTTP m => ShareIPv4sRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response ShareIPv4sResponse) -- ^ Monadic computation which returns the result of the operation
shareIPv4s body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ShareIPv4sResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ShareIPv4sResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                 Data.Aeson.Types.Internal.Object)
                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ShareIPv4sResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                   ShareIPv4sResponseBodyDefault)
                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/networking/ipv4/share") GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/networking\/ipv4\/share.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data ShareIPv4sRequestBody = ShareIPv4sRequestBody {
  -- | ips: A list of IPs that will be shared with this Linode.  When this is finished, the given Linode will be able to bring up these addresses in addition to the Linodes that these addresses belong to.  You must have access to all of these addresses and they must be in the same Region as the Linode.
  shareIPv4sRequestBodyIps :: ([Data.Text.Internal.Text])
  -- | linode_id: The ID of the Linode that the addresses will be shared with.
  , shareIPv4sRequestBodyLinodeId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShareIPv4sRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("ips" Data.Aeson.Types.ToJSON..= shareIPv4sRequestBodyIps obj : "linode_id" Data.Aeson.Types.ToJSON..= shareIPv4sRequestBodyLinodeId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ips" Data.Aeson.Types.ToJSON..= shareIPv4sRequestBodyIps obj) GHC.Base.<> ("linode_id" Data.Aeson.Types.ToJSON..= shareIPv4sRequestBodyLinodeId obj))
instance Data.Aeson.Types.FromJSON.FromJSON ShareIPv4sRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ShareIPv4sRequestBody" (\obj -> (GHC.Base.pure ShareIPv4sRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ips")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "linode_id"))
-- | Create a new 'ShareIPv4sRequestBody' with all required fields.
mkShareIPv4sRequestBody :: [Data.Text.Internal.Text] -- ^ 'shareIPv4sRequestBodyIps'
  -> GHC.Types.Int -- ^ 'shareIPv4sRequestBodyLinodeId'
  -> ShareIPv4sRequestBody
mkShareIPv4sRequestBody shareIPv4sRequestBodyIps shareIPv4sRequestBodyLinodeId = ShareIPv4sRequestBody{shareIPv4sRequestBodyIps = shareIPv4sRequestBodyIps,
                                                                                                       shareIPv4sRequestBodyLinodeId = shareIPv4sRequestBodyLinodeId}
-- | Represents a response of the operation 'shareIPv4s'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ShareIPv4sResponseError' is used.
data ShareIPv4sResponse =
   ShareIPv4sResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | ShareIPv4sResponse200 Data.Aeson.Types.Internal.Object -- ^ Sharing configured successfully.
  | ShareIPv4sResponseDefault ShareIPv4sResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data ShareIPv4sResponseBodyDefault = ShareIPv4sResponseBodyDefault {
  -- | errors
  shareIPv4sResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShareIPv4sResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= shareIPv4sResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= shareIPv4sResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON ShareIPv4sResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ShareIPv4sResponseBodyDefault" (\obj -> GHC.Base.pure ShareIPv4sResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'ShareIPv4sResponseBodyDefault' with all required fields.
mkShareIPv4sResponseBodyDefault :: ShareIPv4sResponseBodyDefault
mkShareIPv4sResponseBodyDefault = ShareIPv4sResponseBodyDefault{shareIPv4sResponseBodyDefaultErrors = GHC.Maybe.Nothing}
