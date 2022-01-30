-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getLinodeTransferByYearMonth
module Linode.Operations.GetLinodeTransferByYearMonth where

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

-- | > GET /linode/instances/{linodeId}/transfer/{year}/{month}
-- 
-- Returns a Linode\'s network transfer statistics for a specific month. The year\/month values must be either a date in the past, or the current month.
getLinodeTransferByYearMonth :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetLinodeTransferByYearMonthResponse)) -- ^ Monad containing the result of the operation
getLinodeTransferByYearMonth config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetLinodeTransferByYearMonthResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetLinodeTransferByYearMonthResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        GetLinodeTransferByYearMonthResponseBody200)
                                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetLinodeTransferByYearMonthResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          GetLinodeTransferByYearMonthResponseBodyDefault)
                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/linode/instances/{linodeId}/transfer/{year}/{month}") [])
-- | > GET /linode/instances/{linodeId}/transfer/{year}/{month}
-- 
-- The same as 'getLinodeTransferByYearMonth' but returns the raw 'Data.ByteString.Char8.ByteString'
getLinodeTransferByYearMonthRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                                 Linode.Common.SecurityScheme s) =>
                                   Linode.Common.Configuration s ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getLinodeTransferByYearMonthRaw config = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/linode/instances/{linodeId}/transfer/{year}/{month}") [])
-- | > GET /linode/instances/{linodeId}/transfer/{year}/{month}
-- 
-- Monadic version of 'getLinodeTransferByYearMonth' (use with 'Linode.Common.runWithConfiguration')
getLinodeTransferByYearMonthM :: forall m s . (Linode.Common.MonadHTTP m,
                                               Linode.Common.SecurityScheme s) =>
                                 Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response GetLinodeTransferByYearMonthResponse))
getLinodeTransferByYearMonthM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetLinodeTransferByYearMonthResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetLinodeTransferByYearMonthResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  GetLinodeTransferByYearMonthResponseBody200)
                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetLinodeTransferByYearMonthResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                    GetLinodeTransferByYearMonthResponseBodyDefault)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/linode/instances/{linodeId}/transfer/{year}/{month}") [])
-- | > GET /linode/instances/{linodeId}/transfer/{year}/{month}
-- 
-- Monadic version of 'getLinodeTransferByYearMonthRaw' (use with 'Linode.Common.runWithConfiguration')
getLinodeTransferByYearMonthRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                                  Linode.Common.SecurityScheme s) =>
                                    Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getLinodeTransferByYearMonthRawM = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/linode/instances/{linodeId}/transfer/{year}/{month}") [])
-- | Represents a response of the operation 'getLinodeTransferByYearMonth'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetLinodeTransferByYearMonthResponseError' is used.
data GetLinodeTransferByYearMonthResponse =                                                      
   GetLinodeTransferByYearMonthResponseError GHC.Base.String                                     -- ^ Means either no matching case available or a parse error
  | GetLinodeTransferByYearMonthResponse200 GetLinodeTransferByYearMonthResponseBody200          -- ^ A collection of the specified Linode\'s network transfer statistics for the requested month. 
  | GetLinodeTransferByYearMonthResponseDefault GetLinodeTransferByYearMonthResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetLinodeTransferByYearMonthResponseBody200
-- 
-- 
data GetLinodeTransferByYearMonthResponseBody200 = GetLinodeTransferByYearMonthResponseBody200 {
  -- | bytes_in: The amount of inbound public network traffic received by this Linode, in bytes, for a specific year\/month.
  getLinodeTransferByYearMonthResponseBody200Bytes_in :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | bytes_out: The amount of outbound public network traffic sent by this Linode, in bytes, for a specific year\/month.
  , getLinodeTransferByYearMonthResponseBody200Bytes_out :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | bytes_total: The total amount of public network traffic sent and received by this Linode, in bytes, for a specific year\/month.
  , getLinodeTransferByYearMonthResponseBody200Bytes_total :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetLinodeTransferByYearMonthResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bytes_in" (getLinodeTransferByYearMonthResponseBody200Bytes_in obj) : (Data.Aeson..=) "bytes_out" (getLinodeTransferByYearMonthResponseBody200Bytes_out obj) : (Data.Aeson..=) "bytes_total" (getLinodeTransferByYearMonthResponseBody200Bytes_total obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bytes_in" (getLinodeTransferByYearMonthResponseBody200Bytes_in obj) GHC.Base.<> ((Data.Aeson..=) "bytes_out" (getLinodeTransferByYearMonthResponseBody200Bytes_out obj) GHC.Base.<> (Data.Aeson..=) "bytes_total" (getLinodeTransferByYearMonthResponseBody200Bytes_total obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetLinodeTransferByYearMonthResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetLinodeTransferByYearMonthResponseBody200" (\obj -> ((GHC.Base.pure GetLinodeTransferByYearMonthResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bytes_in")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bytes_out")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bytes_total"))
-- | Defines the data type for the schema GetLinodeTransferByYearMonthResponseBodyDefault
-- 
-- 
data GetLinodeTransferByYearMonthResponseBodyDefault = GetLinodeTransferByYearMonthResponseBodyDefault {
  -- | errors
  getLinodeTransferByYearMonthResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetLinodeTransferByYearMonthResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (getLinodeTransferByYearMonthResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (getLinodeTransferByYearMonthResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetLinodeTransferByYearMonthResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetLinodeTransferByYearMonthResponseBodyDefault" (\obj -> GHC.Base.pure GetLinodeTransferByYearMonthResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))