-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteNodeBalancer
module Linode.Operations.DeleteNodeBalancer where

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

-- | > DELETE /nodebalancers/{nodeBalancerId}
-- 
-- Deletes a NodeBalancer.
-- 
-- **This is a destructive action and cannot be undone.**
-- 
-- Deleting a NodeBalancer will also delete all associated Configs and Nodes, although the backend servers represented by the Nodes will not be changed or removed. Deleting a NodeBalancer will cause you to lose access to the IP Addresses assigned to this NodeBalancer.
deleteNodeBalancer :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteNodeBalancerResponse)) -- ^ Monad containing the result of the operation
deleteNodeBalancer config = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteNodeBalancerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteNodeBalancerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          DeleteNodeBalancerResponseBody200)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteNodeBalancerResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            DeleteNodeBalancerResponseBodyDefault)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/nodebalancers/{nodeBalancerId}") [])
-- | > DELETE /nodebalancers/{nodeBalancerId}
-- 
-- The same as 'deleteNodeBalancer' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteNodeBalancerRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                       Linode.Common.SecurityScheme s) =>
                         Linode.Common.Configuration s ->
                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteNodeBalancerRaw config = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/nodebalancers/{nodeBalancerId}") [])
-- | > DELETE /nodebalancers/{nodeBalancerId}
-- 
-- Monadic version of 'deleteNodeBalancer' (use with 'Linode.Common.runWithConfiguration')
deleteNodeBalancerM :: forall m s . (Linode.Common.MonadHTTP m,
                                     Linode.Common.SecurityScheme s) =>
                       Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response DeleteNodeBalancerResponse))
deleteNodeBalancerM = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteNodeBalancerResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteNodeBalancerResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    DeleteNodeBalancerResponseBody200)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteNodeBalancerResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                      DeleteNodeBalancerResponseBodyDefault)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/nodebalancers/{nodeBalancerId}") [])
-- | > DELETE /nodebalancers/{nodeBalancerId}
-- 
-- Monadic version of 'deleteNodeBalancerRaw' (use with 'Linode.Common.runWithConfiguration')
deleteNodeBalancerRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                        Linode.Common.SecurityScheme s) =>
                          Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteNodeBalancerRawM = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/nodebalancers/{nodeBalancerId}") [])
-- | Represents a response of the operation 'deleteNodeBalancer'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteNodeBalancerResponseError' is used.
data DeleteNodeBalancerResponse =                                            
   DeleteNodeBalancerResponseError GHC.Base.String                           -- ^ Means either no matching case available or a parse error
  | DeleteNodeBalancerResponse200 DeleteNodeBalancerResponseBody200          -- ^ NodeBalancer deleted successfully.
  | DeleteNodeBalancerResponseDefault DeleteNodeBalancerResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema DeleteNodeBalancerResponseBody200
-- 
-- 
data DeleteNodeBalancerResponseBody200 = DeleteNodeBalancerResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteNodeBalancerResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteNodeBalancerResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteNodeBalancerResponseBody200" (\obj -> GHC.Base.pure DeleteNodeBalancerResponseBody200)
-- | Defines the data type for the schema DeleteNodeBalancerResponseBodyDefault
-- 
-- 
data DeleteNodeBalancerResponseBodyDefault = DeleteNodeBalancerResponseBodyDefault {
  -- | errors
  deleteNodeBalancerResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteNodeBalancerResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (deleteNodeBalancerResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (deleteNodeBalancerResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteNodeBalancerResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteNodeBalancerResponseBodyDefault" (\obj -> GHC.Base.pure DeleteNodeBalancerResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
