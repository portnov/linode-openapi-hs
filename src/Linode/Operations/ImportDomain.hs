-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation importDomain
module Linode.Operations.ImportDomain where

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

-- | > POST /domains/import
-- 
-- Imports a domain zone from a remote nameserver.
-- Your nameserver must allow zone transfers (AXFR) from the following IPs:
-- 
--   - 96.126.114.97
--   - 96.126.114.98
--   - 2600:3c00::5e
--   - 2600:3c00::5f
importDomain :: forall m . Linode.Common.MonadHTTP m => GHC.Maybe.Maybe ImportDomainRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response ImportDomainResponse) -- ^ Monadic computation which returns the result of the operation
importDomain body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ImportDomainResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ImportDomainResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       Domain)
                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ImportDomainResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         ImportDomainResponseBodyDefault)
                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/domains/import") GHC.Base.mempty body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/domains\/import.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data ImportDomainRequestBody = ImportDomainRequestBody {
  -- | domain: The domain to import.
  importDomainRequestBodyDomain :: Data.Text.Internal.Text
  -- | remote_nameserver: The remote nameserver that allows zone transfers (AXFR).
  , importDomainRequestBodyRemoteNameserver :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ImportDomainRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("domain" Data.Aeson.Types.ToJSON..= importDomainRequestBodyDomain obj : "remote_nameserver" Data.Aeson.Types.ToJSON..= importDomainRequestBodyRemoteNameserver obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("domain" Data.Aeson.Types.ToJSON..= importDomainRequestBodyDomain obj) GHC.Base.<> ("remote_nameserver" Data.Aeson.Types.ToJSON..= importDomainRequestBodyRemoteNameserver obj))
instance Data.Aeson.Types.FromJSON.FromJSON ImportDomainRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ImportDomainRequestBody" (\obj -> (GHC.Base.pure ImportDomainRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "domain")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "remote_nameserver"))
-- | Create a new 'ImportDomainRequestBody' with all required fields.
mkImportDomainRequestBody :: Data.Text.Internal.Text -- ^ 'importDomainRequestBodyDomain'
  -> Data.Text.Internal.Text -- ^ 'importDomainRequestBodyRemoteNameserver'
  -> ImportDomainRequestBody
mkImportDomainRequestBody importDomainRequestBodyDomain importDomainRequestBodyRemoteNameserver = ImportDomainRequestBody{importDomainRequestBodyDomain = importDomainRequestBodyDomain,
                                                                                                                          importDomainRequestBodyRemoteNameserver = importDomainRequestBodyRemoteNameserver}
-- | Represents a response of the operation 'importDomain'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ImportDomainResponseError' is used.
data ImportDomainResponse =
   ImportDomainResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | ImportDomainResponse200 Domain -- ^ A single Domain in Linode\'s DNS Manager. 
  | ImportDomainResponseDefault ImportDomainResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data ImportDomainResponseBodyDefault = ImportDomainResponseBodyDefault {
  -- | errors
  importDomainResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ImportDomainResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= importDomainResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= importDomainResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON ImportDomainResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ImportDomainResponseBodyDefault" (\obj -> GHC.Base.pure ImportDomainResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'ImportDomainResponseBodyDefault' with all required fields.
mkImportDomainResponseBodyDefault :: ImportDomainResponseBodyDefault
mkImportDomainResponseBodyDefault = ImportDomainResponseBodyDefault{importDomainResponseBodyDefaultErrors = GHC.Maybe.Nothing}
