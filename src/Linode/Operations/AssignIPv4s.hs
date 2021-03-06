-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation assignIPv4s
module Linode.Operations.AssignIPv4s where

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

-- | > POST /networking/ipv4/assign
-- 
-- Assign multiple IPv4s to multiple Linodes in one Region. This allows swapping, shuffling, or otherwise reorganizing IPv4 Addresses to your Linodes.  When the assignment is finished, all Linodes must end up with at least one public IPv4 and no more than one private IPv4.
-- To assign IPv6 ranges or to use the CLI, see the Linodes Assign IPs ([POST \/networking\/ips\/assign](\/docs\/api\/networking\/\#linodes-assign-ips)) command.
assignIPv4s :: forall m . Linode.Common.MonadHTTP m => AssignIPv4sRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response AssignIPv4sResponse) -- ^ Monadic computation which returns the result of the operation
assignIPv4s body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either AssignIPv4sResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> AssignIPv4sResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                    Data.Aeson.Types.Internal.Object)
                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> AssignIPv4sResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                      AssignIPv4sResponseBodyDefault)
                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/networking/ipv4/assign") GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/networking\/ipv4\/assign.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data AssignIPv4sRequestBody = AssignIPv4sRequestBody {
  -- | assignments: The list of assignments to make.  You must have read_write access to all IPs being assigned and all Linodes being assigned to in order for the assignments to succeed.
  assignIPv4sRequestBodyAssignments :: ([AssignIPv4sRequestBodyAssignments'])
  -- | region: The ID of the Region in which these assignments are to take place.  All IPs and Linodes must exist in this Region.
  , assignIPv4sRequestBodyRegion :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AssignIPv4sRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("assignments" Data.Aeson.Types.ToJSON..= assignIPv4sRequestBodyAssignments obj : "region" Data.Aeson.Types.ToJSON..= assignIPv4sRequestBodyRegion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("assignments" Data.Aeson.Types.ToJSON..= assignIPv4sRequestBodyAssignments obj) GHC.Base.<> ("region" Data.Aeson.Types.ToJSON..= assignIPv4sRequestBodyRegion obj))
instance Data.Aeson.Types.FromJSON.FromJSON AssignIPv4sRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AssignIPv4sRequestBody" (\obj -> (GHC.Base.pure AssignIPv4sRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "assignments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "region"))
-- | Create a new 'AssignIPv4sRequestBody' with all required fields.
mkAssignIPv4sRequestBody :: [AssignIPv4sRequestBodyAssignments'] -- ^ 'assignIPv4sRequestBodyAssignments'
  -> Data.Text.Internal.Text -- ^ 'assignIPv4sRequestBodyRegion'
  -> AssignIPv4sRequestBody
mkAssignIPv4sRequestBody assignIPv4sRequestBodyAssignments assignIPv4sRequestBodyRegion = AssignIPv4sRequestBody{assignIPv4sRequestBodyAssignments = assignIPv4sRequestBodyAssignments,
                                                                                                                 assignIPv4sRequestBodyRegion = assignIPv4sRequestBodyRegion}
-- | Defines the object schema located at @paths.\/networking\/ipv4\/assign.POST.requestBody.content.application\/json.schema.properties.assignments.items@ in the specification.
-- 
-- 
data AssignIPv4sRequestBodyAssignments' = AssignIPv4sRequestBodyAssignments' {
  -- | address: Ths IP Address for this assignment. Must be a IPv4 address you can access in the Region specified. May be a public or private address.
  assignIPv4sRequestBodyAssignments'Address :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | linode_id: The ID of the Linode to assign this address to. The IP\'s previous Linode will lose this address, and must end up with at least one public address and no more than one private address once all assignments have been made.
  , assignIPv4sRequestBodyAssignments'LinodeId :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AssignIPv4sRequestBodyAssignments'
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= assignIPv4sRequestBodyAssignments'Address obj : "linode_id" Data.Aeson.Types.ToJSON..= assignIPv4sRequestBodyAssignments'LinodeId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= assignIPv4sRequestBodyAssignments'Address obj) GHC.Base.<> ("linode_id" Data.Aeson.Types.ToJSON..= assignIPv4sRequestBodyAssignments'LinodeId obj))
instance Data.Aeson.Types.FromJSON.FromJSON AssignIPv4sRequestBodyAssignments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AssignIPv4sRequestBodyAssignments'" (\obj -> (GHC.Base.pure AssignIPv4sRequestBodyAssignments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "linode_id"))
-- | Create a new 'AssignIPv4sRequestBodyAssignments'' with all required fields.
mkAssignIPv4sRequestBodyAssignments' :: AssignIPv4sRequestBodyAssignments'
mkAssignIPv4sRequestBodyAssignments' = AssignIPv4sRequestBodyAssignments'{assignIPv4sRequestBodyAssignments'Address = GHC.Maybe.Nothing,
                                                                          assignIPv4sRequestBodyAssignments'LinodeId = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'assignIPv4s'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'AssignIPv4sResponseError' is used.
data AssignIPv4sResponse =
   AssignIPv4sResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | AssignIPv4sResponse200 Data.Aeson.Types.Internal.Object -- ^ All assignments completed successfully.
  | AssignIPv4sResponseDefault AssignIPv4sResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data AssignIPv4sResponseBodyDefault = AssignIPv4sResponseBodyDefault {
  -- | errors
  assignIPv4sResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AssignIPv4sResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= assignIPv4sResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= assignIPv4sResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON AssignIPv4sResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AssignIPv4sResponseBodyDefault" (\obj -> GHC.Base.pure AssignIPv4sResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'AssignIPv4sResponseBodyDefault' with all required fields.
mkAssignIPv4sResponseBodyDefault :: AssignIPv4sResponseBodyDefault
mkAssignIPv4sResponseBodyDefault = AssignIPv4sResponseBodyDefault{assignIPv4sResponseBodyDefaultErrors = GHC.Maybe.Nothing}
