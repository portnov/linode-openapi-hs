-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation restoreBackup
module Linode.Operations.RestoreBackup where

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

-- | > POST /linode/instances/{linodeId}/backups/{backupId}/restore
-- 
-- Restores a Linode\'s Backup to the specified Linode.
restoreBackup :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> RestoreBackupRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response RestoreBackupResponse)) -- ^ Monad containing the result of the operation
restoreBackup config
              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either RestoreBackupResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> RestoreBackupResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         RestoreBackupResponseBody200)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> RestoreBackupResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           RestoreBackupResponseBodyDefault)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/backups/{backupId}/restore") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/instances/{linodeId}/backups/{backupId}/restore
-- 
-- The same as 'restoreBackup' but returns the raw 'Data.ByteString.Char8.ByteString'
restoreBackupRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                  Linode.Common.SecurityScheme s) =>
                    Linode.Common.Configuration s ->
                    RestoreBackupRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
restoreBackupRaw config
                 body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/backups/{backupId}/restore") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/instances/{linodeId}/backups/{backupId}/restore
-- 
-- Monadic version of 'restoreBackup' (use with 'Linode.Common.runWithConfiguration')
restoreBackupM :: forall m s . (Linode.Common.MonadHTTP m,
                                Linode.Common.SecurityScheme s) =>
                  RestoreBackupRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response RestoreBackupResponse))
restoreBackupM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either RestoreBackupResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> RestoreBackupResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          RestoreBackupResponseBody200)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> RestoreBackupResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                            RestoreBackupResponseBodyDefault)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/backups/{backupId}/restore") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | > POST /linode/instances/{linodeId}/backups/{backupId}/restore
-- 
-- Monadic version of 'restoreBackupRaw' (use with 'Linode.Common.runWithConfiguration')
restoreBackupRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                   Linode.Common.SecurityScheme s) =>
                     RestoreBackupRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
restoreBackupRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/linode/instances/{linodeId}/backups/{backupId}/restore") [] (GHC.Base.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema restoreBackupRequestBody
-- 
-- 
data RestoreBackupRequestBody = RestoreBackupRequestBody {
  -- | linode_id: The ID of the Linode to restore a Backup to.
  restoreBackupRequestBodyLinode_id :: GHC.Integer.Type.Integer
  -- | overwrite: If True, deletes all Disks and Configs on the target Linode
  -- before restoring.
  -- 
  -- If False, and the Disk image size is larger than the available
  -- space on the Linode, an error message indicating insufficient
  -- space is returned.
  , restoreBackupRequestBodyOverwrite :: (GHC.Base.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON RestoreBackupRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "linode_id" (restoreBackupRequestBodyLinode_id obj) : (Data.Aeson..=) "overwrite" (restoreBackupRequestBodyOverwrite obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "linode_id" (restoreBackupRequestBodyLinode_id obj) GHC.Base.<> (Data.Aeson..=) "overwrite" (restoreBackupRequestBodyOverwrite obj))
instance Data.Aeson.Types.FromJSON.FromJSON RestoreBackupRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "RestoreBackupRequestBody" (\obj -> (GHC.Base.pure RestoreBackupRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "linode_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "overwrite"))
-- | Represents a response of the operation 'restoreBackup'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'RestoreBackupResponseError' is used.
data RestoreBackupResponse =                                       
   RestoreBackupResponseError GHC.Base.String                      -- ^ Means either no matching case available or a parse error
  | RestoreBackupResponse200 RestoreBackupResponseBody200          -- ^ Restore from Backup was initiated.
  | RestoreBackupResponseDefault RestoreBackupResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema RestoreBackupResponseBody200
-- 
-- 
data RestoreBackupResponseBody200 = RestoreBackupResponseBody200 {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON RestoreBackupResponseBody200
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON RestoreBackupResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "RestoreBackupResponseBody200" (\obj -> GHC.Base.pure RestoreBackupResponseBody200)
-- | Defines the data type for the schema RestoreBackupResponseBodyDefault
-- 
-- 
data RestoreBackupResponseBodyDefault = RestoreBackupResponseBodyDefault {
  -- | errors
  restoreBackupResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON RestoreBackupResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (restoreBackupResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (restoreBackupResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON RestoreBackupResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "RestoreBackupResponseBodyDefault" (\obj -> GHC.Base.pure RestoreBackupResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))