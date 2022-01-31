-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation updateLinodeIP
module Linode.Operations.UpdateLinodeIP where

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

-- | > PUT /linode/instances/{linodeId}/ips/{address}
-- 
-- Updates a particular IP Address associated with this Linode. Only allows setting\/resetting reverse DNS.
updateLinodeIP :: forall m . Linode.Common.MonadHTTP m => UpdateLinodeIPParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> GHC.Maybe.Maybe UpdateLinodeIPRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response UpdateLinodeIPResponse) -- ^ Monadic computation which returns the result of the operation
updateLinodeIP parameters
               body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either UpdateLinodeIPResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> UpdateLinodeIPResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             IPAddress)
                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> UpdateLinodeIPResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                               UpdateLinodeIPResponseBodyDefault)
                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack (("/linode/instances/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (updateLinodeIPParametersPathLinodeId parameters))) GHC.Base.++ "/ips/")) GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel (updateLinodeIPParametersPathAddress parameters))) GHC.Base.++ ""))) GHC.Base.mempty body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/linode\/instances\/{linodeId}\/ips\/{address}.PUT.parameters@ in the specification.
-- 
-- 
data UpdateLinodeIPParameters = UpdateLinodeIPParameters {
  -- | pathAddress: Represents the parameter named \'address\'
  -- 
  -- The IP address to look up.
  updateLinodeIPParametersPathAddress :: Data.Text.Internal.Text
  -- | pathLinodeId: Represents the parameter named \'linodeId\'
  -- 
  -- The ID of the Linode to look up.
  , updateLinodeIPParametersPathLinodeId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateLinodeIPParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathAddress" Data.Aeson.Types.ToJSON..= updateLinodeIPParametersPathAddress obj : "pathLinodeId" Data.Aeson.Types.ToJSON..= updateLinodeIPParametersPathLinodeId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathAddress" Data.Aeson.Types.ToJSON..= updateLinodeIPParametersPathAddress obj) GHC.Base.<> ("pathLinodeId" Data.Aeson.Types.ToJSON..= updateLinodeIPParametersPathLinodeId obj))
instance Data.Aeson.Types.FromJSON.FromJSON UpdateLinodeIPParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateLinodeIPParameters" (\obj -> (GHC.Base.pure UpdateLinodeIPParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAddress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathLinodeId"))
-- | Create a new 'UpdateLinodeIPParameters' with all required fields.
mkUpdateLinodeIPParameters :: Data.Text.Internal.Text -- ^ 'updateLinodeIPParametersPathAddress'
  -> GHC.Types.Int -- ^ 'updateLinodeIPParametersPathLinodeId'
  -> UpdateLinodeIPParameters
mkUpdateLinodeIPParameters updateLinodeIPParametersPathAddress updateLinodeIPParametersPathLinodeId = UpdateLinodeIPParameters{updateLinodeIPParametersPathAddress = updateLinodeIPParametersPathAddress,
                                                                                                                               updateLinodeIPParametersPathLinodeId = updateLinodeIPParametersPathLinodeId}
-- | Defines the object schema located at @paths.\/linode\/instances\/{linodeId}\/ips\/{address}.PUT.requestBody.content.application\/json.schema.allOf@ in the specification.
-- 
-- 
data UpdateLinodeIPRequestBody = UpdateLinodeIPRequestBody {
  -- | address: The IP address.
  updateLinodeIPRequestBodyAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | gateway: The default gateway for this address.
  , updateLinodeIPRequestBodyGateway :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | linode_id: The ID of the Linode this address currently belongs to. For IPv4 addresses, this is by default the Linode that this address was assigned to on creation, and these addresses my be moved using the [\/networking\/ipv4\/assign](\/docs\/api\/networking\/\#ips-to-linodes-assign) endpoint. For SLAAC and link-local addresses, this value may not be changed.
  , updateLinodeIPRequestBodyLinodeId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | prefix: The number of bits set in the subnet mask.
  , updateLinodeIPRequestBodyPrefix :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | public: Whether this is a public or private IP address.
  , updateLinodeIPRequestBodyPublic :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | rdns: The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set.
  , updateLinodeIPRequestBodyRdns :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | region: The Region this IP address resides in.
  , updateLinodeIPRequestBodyRegion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | subnet_mask: The mask that separates host bits from network bits for this address.
  , updateLinodeIPRequestBodySubnetMask :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: The type of address this is.
  , updateLinodeIPRequestBodyType :: (GHC.Maybe.Maybe UpdateLinodeIPRequestBodyType')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateLinodeIPRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyAddress obj : "gateway" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyGateway obj : "linode_id" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyLinodeId obj : "prefix" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyPrefix obj : "public" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyPublic obj : "rdns" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyRdns obj : "region" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyRegion obj : "subnet_mask" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodySubnetMask obj : "type" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyAddress obj) GHC.Base.<> (("gateway" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyGateway obj) GHC.Base.<> (("linode_id" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyLinodeId obj) GHC.Base.<> (("prefix" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyPrefix obj) GHC.Base.<> (("public" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyPublic obj) GHC.Base.<> (("rdns" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyRdns obj) GHC.Base.<> (("region" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyRegion obj) GHC.Base.<> (("subnet_mask" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodySubnetMask obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= updateLinodeIPRequestBodyType obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON UpdateLinodeIPRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateLinodeIPRequestBody" (\obj -> ((((((((GHC.Base.pure UpdateLinodeIPRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gateway")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "linode_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prefix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "public")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rdns")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subnet_mask")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Create a new 'UpdateLinodeIPRequestBody' with all required fields.
mkUpdateLinodeIPRequestBody :: UpdateLinodeIPRequestBody
mkUpdateLinodeIPRequestBody = UpdateLinodeIPRequestBody{updateLinodeIPRequestBodyAddress = GHC.Maybe.Nothing,
                                                        updateLinodeIPRequestBodyGateway = GHC.Maybe.Nothing,
                                                        updateLinodeIPRequestBodyLinodeId = GHC.Maybe.Nothing,
                                                        updateLinodeIPRequestBodyPrefix = GHC.Maybe.Nothing,
                                                        updateLinodeIPRequestBodyPublic = GHC.Maybe.Nothing,
                                                        updateLinodeIPRequestBodyRdns = GHC.Maybe.Nothing,
                                                        updateLinodeIPRequestBodyRegion = GHC.Maybe.Nothing,
                                                        updateLinodeIPRequestBodySubnetMask = GHC.Maybe.Nothing,
                                                        updateLinodeIPRequestBodyType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/linode\/instances\/{linodeId}\/ips\/{address}.PUT.requestBody.content.application\/json.schema.allOf.properties.type@ in the specification.
-- 
-- The type of address this is.
data UpdateLinodeIPRequestBodyType' =
   UpdateLinodeIPRequestBodyType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | UpdateLinodeIPRequestBodyType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | UpdateLinodeIPRequestBodyType'EnumIpv4 -- ^ Represents the JSON value @"ipv4"@
  | UpdateLinodeIPRequestBodyType'EnumIpv6 -- ^ Represents the JSON value @"ipv6"@
  | UpdateLinodeIPRequestBodyType'EnumIpv6Pool -- ^ Represents the JSON value @"ipv6/pool"@
  | UpdateLinodeIPRequestBodyType'EnumIpv6Range -- ^ Represents the JSON value @"ipv6/range"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateLinodeIPRequestBodyType'
    where toJSON (UpdateLinodeIPRequestBodyType'Other val) = val
          toJSON (UpdateLinodeIPRequestBodyType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (UpdateLinodeIPRequestBodyType'EnumIpv4) = "ipv4"
          toJSON (UpdateLinodeIPRequestBodyType'EnumIpv6) = "ipv6"
          toJSON (UpdateLinodeIPRequestBodyType'EnumIpv6Pool) = "ipv6/pool"
          toJSON (UpdateLinodeIPRequestBodyType'EnumIpv6Range) = "ipv6/range"
instance Data.Aeson.Types.FromJSON.FromJSON UpdateLinodeIPRequestBodyType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "ipv4" -> UpdateLinodeIPRequestBodyType'EnumIpv4
                                            | val GHC.Classes.== "ipv6" -> UpdateLinodeIPRequestBodyType'EnumIpv6
                                            | val GHC.Classes.== "ipv6/pool" -> UpdateLinodeIPRequestBodyType'EnumIpv6Pool
                                            | val GHC.Classes.== "ipv6/range" -> UpdateLinodeIPRequestBodyType'EnumIpv6Range
                                            | GHC.Base.otherwise -> UpdateLinodeIPRequestBodyType'Other val)
-- | Represents a response of the operation 'updateLinodeIP'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'UpdateLinodeIPResponseError' is used.
data UpdateLinodeIPResponse =
   UpdateLinodeIPResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | UpdateLinodeIPResponse200 IPAddress -- ^ The updated IP address record.
  | UpdateLinodeIPResponseDefault UpdateLinodeIPResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data UpdateLinodeIPResponseBodyDefault = UpdateLinodeIPResponseBodyDefault {
  -- | errors
  updateLinodeIPResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UpdateLinodeIPResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= updateLinodeIPResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= updateLinodeIPResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON UpdateLinodeIPResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateLinodeIPResponseBodyDefault" (\obj -> GHC.Base.pure UpdateLinodeIPResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'UpdateLinodeIPResponseBodyDefault' with all required fields.
mkUpdateLinodeIPResponseBodyDefault :: UpdateLinodeIPResponseBodyDefault
mkUpdateLinodeIPResponseBodyDefault = UpdateLinodeIPResponseBodyDefault{updateLinodeIPResponseBodyDefaultErrors = GHC.Maybe.Nothing}
