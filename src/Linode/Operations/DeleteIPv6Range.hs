-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteIPv6Range
module Linode.Operations.DeleteIPv6Range where

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

-- | > DELETE /networking/ipv6/ranges/{range}
-- 
-- Removes this IPv6 range from your account and disconnects the range from any assigned Linodes.
-- 
-- **Note:** Shared IPv6 ranges cannot be deleted at this time. Please contact Customer Support for assistance.
deleteIPv6Range :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteIPv6RangeResponse)) -- ^ Monad containing the result of the operation
deleteIPv6Range config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteIPv6RangeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteIPv6RangeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 DeleteIPv6RangeResponseBody200)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteIPv6RangeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                   DeleteIPv6RangeResponseBodyDefault)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/networking/ipv6/ranges/{range}") [])
-- | > DELETE /networking/ipv6/ranges/{range}
-- 
-- The same as 'deleteIPv6Range' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteIPv6RangeRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                    Linode.Common.SecurityScheme s) =>
                      Linode.Common.Configuration s ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteIPv6RangeRaw config = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/networking/ipv6/ranges/{range}") [])
-- | > DELETE /networking/ipv6/ranges/{range}
-- 
-- Monadic version of 'deleteIPv6Range' (use with 'Linode.Common.runWithConfiguration')
deleteIPv6RangeM :: forall m s . (Linode.Common.MonadHTTP m,
                                  Linode.Common.SecurityScheme s) =>
                    Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response DeleteIPv6RangeResponse))
deleteIPv6RangeM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteIPv6RangeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteIPv6RangeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                           DeleteIPv6RangeResponseBody200)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteIPv6RangeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                             DeleteIPv6RangeResponseBodyDefault)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/networking/ipv6/ranges/{range}") [])
-- | > DELETE /networking/ipv6/ranges/{range}
-- 
-- Monadic version of 'deleteIPv6RangeRaw' (use with 'Linode.Common.runWithConfiguration')
deleteIPv6RangeRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                     Linode.Common.SecurityScheme s) =>
                       Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteIPv6RangeRawM = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/networking/ipv6/ranges/{range}") [])
-- | Represents a response of the operation 'deleteIPv6Range'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteIPv6RangeResponseError' is used.
data DeleteIPv6RangeResponse =                                         
   DeleteIPv6RangeResponseError GHC.Base.String                        -- ^ Means either no matching case available or a parse error
  | DeleteIPv6RangeResponse200 DeleteIPv6RangeResponseBody200          -- ^ IPv6 Range deleted.
  | DeleteIPv6RangeResponseDefault DeleteIPv6RangeResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema DeleteIPv6RangeResponseBody200
-- 
-- 
data DeleteIPv6RangeResponseBody200 = DeleteIPv6RangeResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteIPv6RangeResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteIPv6RangeResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteIPv6RangeResponseBody200" (\obj -> GHC.Base.pure DeleteIPv6RangeResponseBody200)
-- | Defines the data type for the schema DeleteIPv6RangeResponseBodyDefault
-- 
-- 
data DeleteIPv6RangeResponseBodyDefault = DeleteIPv6RangeResponseBodyDefault {
  -- | errors
  deleteIPv6RangeResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteIPv6RangeResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (deleteIPv6RangeResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (deleteIPv6RangeResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteIPv6RangeResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteIPv6RangeResponseBodyDefault" (\obj -> GHC.Base.pure DeleteIPv6RangeResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))