-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation assignIPs
module Linode.Operations.AssignIPs where

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

-- | > POST /networking/ips/assign
-- 
-- Assign multiple IPv4 addresses and\/or IPv6 ranges to multiple Linodes in one Region. This allows
-- swapping, shuffling, or otherwise reorganizing IPs to your Linodes.
-- 
-- The following restrictions apply:
-- * All Linodes involved must have at least one public IPv4 address after assignment.
-- * Linodes may have no more than one assigned private IPv4 address.
-- * Linodes may have no more than one assigned IPv6 range.
-- * [Open a Support Ticket](\/docs\/api\/support\/\#support-ticket-open) to request additional IPv4 addresses or IPv6 ranges.
assignIPs :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> AssignIPsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response AssignIPsResponse)) -- ^ Monad containing the result of the operation
assignIPs config
          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either AssignIPsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> AssignIPsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             AssignIPsResponseBody200)
                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> AssignIPsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                               AssignIPsResponseBodyDefault)
                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/networking/ips/assign") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /networking/ips/assign
-- 
-- The same as 'assignIPs' but returns the raw 'Data.ByteString.Char8.ByteString'
assignIPsRaw :: forall m s . (Linode.Common.MonadHTTP m,
                              Linode.Common.SecurityScheme s) =>
                Linode.Common.Configuration s ->
                AssignIPsRequestBody ->
                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
assignIPsRaw config
             body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/networking/ips/assign") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /networking/ips/assign
-- 
-- Monadic version of 'assignIPs' (use with 'Linode.Common.runWithConfiguration')
assignIPsM :: forall m s . (Linode.Common.MonadHTTP m,
                            Linode.Common.SecurityScheme s) =>
              AssignIPsRequestBody ->
              Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                 m
                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                     (Network.HTTP.Client.Types.Response AssignIPsResponse))
assignIPsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either AssignIPsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> AssignIPsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                              AssignIPsResponseBody200)
                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> AssignIPsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                AssignIPsResponseBodyDefault)
                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/networking/ips/assign") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /networking/ips/assign
-- 
-- Monadic version of 'assignIPsRaw' (use with 'Linode.Common.runWithConfiguration')
assignIPsRawM :: forall m s . (Linode.Common.MonadHTTP m,
                               Linode.Common.SecurityScheme s) =>
                 AssignIPsRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
assignIPsRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/networking/ips/assign") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema assignIPsRequestBody
-- 
-- 
data AssignIPsRequestBody = AssignIPsRequestBody {
  -- | assignments: The list of assignments to make. You must have read_write access to all IPs being assigned and all Linodes being assigned to in order for the assignments to succeed.
  assignIPsRequestBodyAssignments :: ([] AssignIPsRequestBodyAssignments)
  -- | region: The ID of the Region in which these assignments are to take place. All IPs and Linodes must exist in this Region.
  , assignIPsRequestBodyRegion :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AssignIPsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "assignments" (assignIPsRequestBodyAssignments obj) : (Data.Aeson..=) "region" (assignIPsRequestBodyRegion obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "assignments" (assignIPsRequestBodyAssignments obj) GHC.Base.<> (Data.Aeson..=) "region" (assignIPsRequestBodyRegion obj))
instance Data.Aeson.Types.FromJSON.FromJSON AssignIPsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AssignIPsRequestBody" (\obj -> (GHC.Base.pure AssignIPsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "assignments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "region"))
-- | Defines the data type for the schema assignIPsRequestBodyAssignments
-- 
-- 
data AssignIPsRequestBodyAssignments = AssignIPsRequestBodyAssignments {
  -- | address: The IPv4 address or IPv6 range for this assignment.
  -- * Must be an IPv4 address or an IPv6 range you can access in the Region specified.
  -- * IPv6 ranges must include a prefix length of \`\/56\` or \`\/64\`, for example: \`2001:db8:3c4d:15::\/64\`.
  -- * Assignment of an IPv6 range to a Linode updates the route target of the range to the assigned Linode\'s SLAAC address.
  -- * May be a public or private address.
  assignIPsRequestBodyAssignmentsAddress :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | linode_id: The ID of the Linode to assign this address to. The IP\'s previous Linode will lose this address, and must end up with at least one public address and no more than one private address once all assignments have been made.
  , assignIPsRequestBodyAssignmentsLinode_id :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AssignIPsRequestBodyAssignments
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (assignIPsRequestBodyAssignmentsAddress obj) : (Data.Aeson..=) "linode_id" (assignIPsRequestBodyAssignmentsLinode_id obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (assignIPsRequestBodyAssignmentsAddress obj) GHC.Base.<> (Data.Aeson..=) "linode_id" (assignIPsRequestBodyAssignmentsLinode_id obj))
instance Data.Aeson.Types.FromJSON.FromJSON AssignIPsRequestBodyAssignments
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AssignIPsRequestBodyAssignments" (\obj -> (GHC.Base.pure AssignIPsRequestBodyAssignments GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "linode_id"))
-- | Represents a response of the operation 'assignIPs'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'AssignIPsResponseError' is used.
data AssignIPsResponse =                                   
   AssignIPsResponseError GHC.Base.String                  -- ^ Means either no matching case available or a parse error
  | AssignIPsResponse200 AssignIPsResponseBody200          -- ^ All assignments completed successfully.
  | AssignIPsResponseDefault AssignIPsResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema AssignIPsResponseBody200
-- 
-- 
data AssignIPsResponseBody200 = AssignIPsResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AssignIPsResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON AssignIPsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AssignIPsResponseBody200" (\obj -> GHC.Base.pure AssignIPsResponseBody200)
-- | Defines the data type for the schema AssignIPsResponseBodyDefault
-- 
-- 
data AssignIPsResponseBodyDefault = AssignIPsResponseBodyDefault {
  -- | errors
  assignIPsResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AssignIPsResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (assignIPsResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (assignIPsResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON AssignIPsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AssignIPsResponseBodyDefault" (\obj -> GHC.Base.pure AssignIPsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))