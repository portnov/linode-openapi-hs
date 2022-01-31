-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getVLANs
module Linode.Operations.GetVLANs where

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

-- | > GET /networking/vlans
-- 
-- Returns a list of all Virtual Local Area Networks (VLANs) on your Account. VLANs provide
-- a mechanism for secure communication between two or more Linodes that are assigned to the
-- same VLAN and are both within the same Layer 2 broadcast domain.
-- 
-- VLANs are created and attached to Linodes by using the \`interfaces\` property for the following endpoints:
-- 
-- - Linode Create ([POST \/linode\/instances](\/docs\/api\/linode-instances\/\#linode-create))
-- - Configuration Profile Create ([POST \/linode\/instances\/{linodeId}\/configs](\/docs\/api\/linode-instances\/\#configuration-profile-create))
-- - Configuration Profile Update ([PUT \/linode\/instances\/{linodeId}\/configs\/{configId}](\/docs\/api\/linode-instances\/\#configuration-profile-update))
-- 
-- There are several ways to detach a VLAN from a Linode:
-- 
-- - [Update](\/docs\/api\/linode-instances\/\#configuration-profile-update) the active Configuration Profile to remove the VLAN interface, then [reboot](\/docs\/api\/linode-instances\/\#linode-reboot) the Linode.
-- - [Create](\/docs\/api\/linode-instances\/\#configuration-profile-create) a new Configuration Profile without the VLAN interface, then [reboot](\/docs\/api\/linode-instances\/\#linode-reboot) the Linode into the new Configuration Profile.
-- - [Delete](\/docs\/api\/linode-instances\/\#linode-delete) the Linode.
-- 
-- **Note:** Only Next Generation Network (NGN) data centers support VLANs. Use the Regions ([\/regions](\/docs\/api\/regions\/)) endpoint to view the capabilities of data center regions.
-- If a VLAN is attached to your Linode and you attempt to migrate or clone it to a non-NGN data center,
-- the migration or cloning will not initiate. If a Linode cannot be migrated because of an incompatibility,
-- you will be prompted to select a different data center or contact support.
-- 
-- **Note:** See our guide on [Getting Started with VLANs](\/docs\/guides\/getting-started-with-vlans\/) to view additional [limitations](\/docs\/guides\/getting-started-with-vlans\/\#limitations).
getVLANs :: forall m . Linode.Common.MonadHTTP m => GetVLANsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetVLANsResponse) -- ^ Monadic computation which returns the result of the operation
getVLANs parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetVLANsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetVLANsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                 GetVLANsResponseBody200)
                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetVLANsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                   GetVLANsResponseBodyDefault)
                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/networking/vlans") [Linode.Common.QueryParameter (Data.Text.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getVLANsParametersQueryPage parameters) (Data.Text.pack "form") GHC.Types.False,
                                                                                                                                                                                                                                                                                                                                                                                              Linode.Common.QueryParameter (Data.Text.pack "page_size") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getVLANsParametersQueryPageSize parameters) (Data.Text.pack "form") GHC.Types.False])
-- | Defines the object schema located at @paths.\/networking\/vlans.GET.parameters@ in the specification.
-- 
-- 
data GetVLANsParameters = GetVLANsParameters {
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- The page of a collection to return.
  -- 
  -- Constraints:
  -- 
  -- * Minimum  of 1.0
  getVLANsParametersQueryPage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage_size: Represents the parameter named \'page_size\'
  -- 
  -- The number of items to return per page.
  -- 
  -- Constraints:
  -- 
  -- * Maxium  of 100.0
  -- * Minimum  of 25.0
  , getVLANsParametersQueryPageSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetVLANsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("queryPage" Data.Aeson.Types.ToJSON..= getVLANsParametersQueryPage obj : "queryPage_size" Data.Aeson.Types.ToJSON..= getVLANsParametersQueryPageSize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryPage" Data.Aeson.Types.ToJSON..= getVLANsParametersQueryPage obj) GHC.Base.<> ("queryPage_size" Data.Aeson.Types.ToJSON..= getVLANsParametersQueryPageSize obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetVLANsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVLANsParameters" (\obj -> (GHC.Base.pure GetVLANsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryPage_size"))
-- | Create a new 'GetVLANsParameters' with all required fields.
mkGetVLANsParameters :: GetVLANsParameters
mkGetVLANsParameters = GetVLANsParameters{getVLANsParametersQueryPage = GHC.Maybe.Nothing,
                                          getVLANsParametersQueryPageSize = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getVLANs'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetVLANsResponseError' is used.
data GetVLANsResponse =
   GetVLANsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetVLANsResponse200 GetVLANsResponseBody200 -- ^ The VLANs available on this Account.
  | GetVLANsResponseDefault GetVLANsResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/networking\/vlans.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetVLANsResponseBody200 = GetVLANsResponseBody200 {
  -- | data
  getVLANsResponseBody200Data :: (GHC.Maybe.Maybe ([Vlans]))
  -- | page: The current [page](\/docs\/api\/\#pagination).
  , getVLANsResponseBody200Page :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPage)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , getVLANsResponseBody200Pages :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesPages)
  -- | results: The total number of results.
  , getVLANsResponseBody200Results :: (GHC.Maybe.Maybe PaginationEnvelopePropertiesResults)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetVLANsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getVLANsResponseBody200Data obj : "page" Data.Aeson.Types.ToJSON..= getVLANsResponseBody200Page obj : "pages" Data.Aeson.Types.ToJSON..= getVLANsResponseBody200Pages obj : "results" Data.Aeson.Types.ToJSON..= getVLANsResponseBody200Results obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getVLANsResponseBody200Data obj) GHC.Base.<> (("page" Data.Aeson.Types.ToJSON..= getVLANsResponseBody200Page obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= getVLANsResponseBody200Pages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= getVLANsResponseBody200Results obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetVLANsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVLANsResponseBody200" (\obj -> (((GHC.Base.pure GetVLANsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'GetVLANsResponseBody200' with all required fields.
mkGetVLANsResponseBody200 :: GetVLANsResponseBody200
mkGetVLANsResponseBody200 = GetVLANsResponseBody200{getVLANsResponseBody200Data = GHC.Maybe.Nothing,
                                                    getVLANsResponseBody200Page = GHC.Maybe.Nothing,
                                                    getVLANsResponseBody200Pages = GHC.Maybe.Nothing,
                                                    getVLANsResponseBody200Results = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetVLANsResponseBodyDefault = GetVLANsResponseBodyDefault {
  -- | errors
  getVLANsResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetVLANsResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getVLANsResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getVLANsResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetVLANsResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVLANsResponseBodyDefault" (\obj -> GHC.Base.pure GetVLANsResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetVLANsResponseBodyDefault' with all required fields.
mkGetVLANsResponseBodyDefault :: GetVLANsResponseBodyDefault
mkGetVLANsResponseBodyDefault = GetVLANsResponseBodyDefault{getVLANsResponseBodyDefaultErrors = GHC.Maybe.Nothing}
