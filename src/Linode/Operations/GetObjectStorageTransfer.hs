-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getObjectStorageTransfer
module Linode.Operations.GetObjectStorageTransfer where

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

-- | > GET /object-storage/transfer
-- 
-- The amount of outbound data transfer used by your account\'s Object Storage buckets.
-- Object Storage adds 1 terabyte of outbound data transfer to your data transfer pool.
-- See the [Object Storage Pricing and Limitations](\/docs\/guides\/pricing-and-limitations\/)
-- guide for details on Object Storage transfer quotas.
getObjectStorageTransfer :: forall m . Linode.Common.MonadHTTP m => Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetObjectStorageTransferResponse) -- ^ Monadic computation which returns the result of the operation
getObjectStorageTransfer = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetObjectStorageTransferResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetObjectStorageTransferResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                      GetObjectStorageTransferResponseBody200)
                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetObjectStorageTransferResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                        GetObjectStorageTransferResponseBodyDefault)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/object-storage/transfer") GHC.Base.mempty)
-- | Represents a response of the operation 'getObjectStorageTransfer'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetObjectStorageTransferResponseError' is used.
data GetObjectStorageTransferResponse =
   GetObjectStorageTransferResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetObjectStorageTransferResponse200 GetObjectStorageTransferResponseBody200 -- ^ Returns the amount of outbound data transfer used by your account\'s Object Storage buckets. 
  | GetObjectStorageTransferResponseDefault GetObjectStorageTransferResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/object-storage\/transfer.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetObjectStorageTransferResponseBody200 = GetObjectStorageTransferResponseBody200 {
  -- | used: The amount of outbound data transfer used by your account\'s Object Storage buckets, in bytes, for the current month???s billing cycle.
  getObjectStorageTransferResponseBody200Used :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetObjectStorageTransferResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("used" Data.Aeson.Types.ToJSON..= getObjectStorageTransferResponseBody200Used obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("used" Data.Aeson.Types.ToJSON..= getObjectStorageTransferResponseBody200Used obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetObjectStorageTransferResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetObjectStorageTransferResponseBody200" (\obj -> GHC.Base.pure GetObjectStorageTransferResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "used"))
-- | Create a new 'GetObjectStorageTransferResponseBody200' with all required fields.
mkGetObjectStorageTransferResponseBody200 :: GetObjectStorageTransferResponseBody200
mkGetObjectStorageTransferResponseBody200 = GetObjectStorageTransferResponseBody200{getObjectStorageTransferResponseBody200Used = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetObjectStorageTransferResponseBodyDefault = GetObjectStorageTransferResponseBodyDefault {
  -- | errors
  getObjectStorageTransferResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetObjectStorageTransferResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getObjectStorageTransferResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getObjectStorageTransferResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetObjectStorageTransferResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetObjectStorageTransferResponseBodyDefault" (\obj -> GHC.Base.pure GetObjectStorageTransferResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetObjectStorageTransferResponseBodyDefault' with all required fields.
mkGetObjectStorageTransferResponseBodyDefault :: GetObjectStorageTransferResponseBodyDefault
mkGetObjectStorageTransferResponseBodyDefault = GetObjectStorageTransferResponseBodyDefault{getObjectStorageTransferResponseBodyDefaultErrors = GHC.Maybe.Nothing}
