-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation viewObjectStorageBucketACL
module Linode.Operations.ViewObjectStorageBucketACL where

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

-- | > GET /object-storage/buckets/{clusterId}/{bucket}/object-acl
-- 
-- View an Object’s configured Access Control List (ACL) in this Object Storage bucket.
-- ACLs define who can access your buckets and objects and specify the level of access
-- granted to those users.
-- 
-- 
-- This endpoint is available for convenience. It is recommended that instead you
-- use the more [fully-featured S3 API](https:\/\/docs.ceph.com\/en\/latest\/radosgw\/s3\/objectops\/\#get-object-acl) directly.
viewObjectStorageBucketACL :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                                -- ^ name: The \`name\` of the object for which to retrieve its Access Control List (ACL). Use the [Object Storage Bucket Contents List](\/docs\/api\/object-storage\/\#object-storage-bucket-contents-list) endpoint to access all object names in a bucket. 
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response ViewObjectStorageBucketACLResponse)) -- ^ Monad containing the result of the operation
viewObjectStorageBucketACL config
                           name = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either ViewObjectStorageBucketACLResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ViewObjectStorageBucketACLResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                ViewObjectStorageBucketACLResponseBody200)
                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ViewObjectStorageBucketACLResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                  ViewObjectStorageBucketACLResponseBodyDefault)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/object-storage/buckets/{clusterId}/{bucket}/object-acl") ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         GHC.Base.Just GHC.Base.$ Linode.Common.stringifyModel name) : []))
-- | > GET /object-storage/buckets/{clusterId}/{bucket}/object-acl
-- 
-- The same as 'viewObjectStorageBucketACL' but returns the raw 'Data.ByteString.Char8.ByteString'
viewObjectStorageBucketACLRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                               Linode.Common.SecurityScheme s) =>
                                 Linode.Common.Configuration s ->
                                 Data.Text.Internal.Text ->
                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
viewObjectStorageBucketACLRaw config
                              name = GHC.Base.id (Linode.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/object-storage/buckets/{clusterId}/{bucket}/object-acl") ((Data.Text.pack "name",
                                                                                                                                                                                                                                 GHC.Base.Just GHC.Base.$ Linode.Common.stringifyModel name) : []))
-- | > GET /object-storage/buckets/{clusterId}/{bucket}/object-acl
-- 
-- Monadic version of 'viewObjectStorageBucketACL' (use with 'Linode.Common.runWithConfiguration')
viewObjectStorageBucketACLM :: forall m s . (Linode.Common.MonadHTTP m,
                                             Linode.Common.SecurityScheme s) =>
                               Data.Text.Internal.Text ->
                               Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response ViewObjectStorageBucketACLResponse))
viewObjectStorageBucketACLM name = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either ViewObjectStorageBucketACLResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> ViewObjectStorageBucketACLResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ViewObjectStorageBucketACLResponseBody200)
                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> ViewObjectStorageBucketACLResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   ViewObjectStorageBucketACLResponseBodyDefault)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/object-storage/buckets/{clusterId}/{bucket}/object-acl") ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    GHC.Base.Just GHC.Base.$ Linode.Common.stringifyModel name) : []))
-- | > GET /object-storage/buckets/{clusterId}/{bucket}/object-acl
-- 
-- Monadic version of 'viewObjectStorageBucketACLRaw' (use with 'Linode.Common.runWithConfiguration')
viewObjectStorageBucketACLRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                                Linode.Common.SecurityScheme s) =>
                                  Data.Text.Internal.Text ->
                                  Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
viewObjectStorageBucketACLRawM name = GHC.Base.id (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/object-storage/buckets/{clusterId}/{bucket}/object-acl") ((Data.Text.pack "name",
                                                                                                                                                                                                                            GHC.Base.Just GHC.Base.$ Linode.Common.stringifyModel name) : []))
-- | Represents a response of the operation 'viewObjectStorageBucketACL'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'ViewObjectStorageBucketACLResponseError' is used.
data ViewObjectStorageBucketACLResponse =                                                    
   ViewObjectStorageBucketACLResponseError GHC.Base.String                                   -- ^ Means either no matching case available or a parse error
  | ViewObjectStorageBucketACLResponse200 ViewObjectStorageBucketACLResponseBody200          -- ^ The Object\'s canned ACL and policy.
  | ViewObjectStorageBucketACLResponseDefault ViewObjectStorageBucketACLResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema ViewObjectStorageBucketACLResponseBody200
-- 
-- 
data ViewObjectStorageBucketACLResponseBody200 = ViewObjectStorageBucketACLResponseBody200 {
  -- | acl: The Access Control Level of the bucket, as a canned ACL string. For more fine-grained control of ACLs, use the S3 API directly.
  viewObjectStorageBucketACLResponseBody200Acl :: (GHC.Base.Maybe ViewObjectStorageBucketACLResponseBody200Acl)
  -- | acl_xml: The full XML of the object\'s ACL policy.
  , viewObjectStorageBucketACLResponseBody200Acl_xml :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ViewObjectStorageBucketACLResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "acl" (viewObjectStorageBucketACLResponseBody200Acl obj) : (Data.Aeson..=) "acl_xml" (viewObjectStorageBucketACLResponseBody200Acl_xml obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "acl" (viewObjectStorageBucketACLResponseBody200Acl obj) GHC.Base.<> (Data.Aeson..=) "acl_xml" (viewObjectStorageBucketACLResponseBody200Acl_xml obj))
instance Data.Aeson.Types.FromJSON.FromJSON ViewObjectStorageBucketACLResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ViewObjectStorageBucketACLResponseBody200" (\obj -> (GHC.Base.pure ViewObjectStorageBucketACLResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "acl")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "acl_xml"))
-- | Defines the enum schema ViewObjectStorageBucketACLResponseBody200Acl
-- 
-- The Access Control Level of the bucket, as a canned ACL string. For more fine-grained control of ACLs, use the S3 API directly.
data ViewObjectStorageBucketACLResponseBody200Acl
    = ViewObjectStorageBucketACLResponseBody200AclEnumOther Data.Aeson.Types.Internal.Value
    | ViewObjectStorageBucketACLResponseBody200AclEnumTyped Data.Text.Internal.Text
    | ViewObjectStorageBucketACLResponseBody200AclEnumString_authenticated_read
    | ViewObjectStorageBucketACLResponseBody200AclEnumString_custom
    | ViewObjectStorageBucketACLResponseBody200AclEnumString_private
    | ViewObjectStorageBucketACLResponseBody200AclEnumString_public_read
    | ViewObjectStorageBucketACLResponseBody200AclEnumString_public_read_write
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON ViewObjectStorageBucketACLResponseBody200Acl
    where toJSON (ViewObjectStorageBucketACLResponseBody200AclEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ViewObjectStorageBucketACLResponseBody200AclEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ViewObjectStorageBucketACLResponseBody200AclEnumString_authenticated_read) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "authenticated-read"
          toJSON (ViewObjectStorageBucketACLResponseBody200AclEnumString_custom) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom"
          toJSON (ViewObjectStorageBucketACLResponseBody200AclEnumString_private) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private"
          toJSON (ViewObjectStorageBucketACLResponseBody200AclEnumString_public_read) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read"
          toJSON (ViewObjectStorageBucketACLResponseBody200AclEnumString_public_read_write) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read-write"
instance Data.Aeson.FromJSON ViewObjectStorageBucketACLResponseBody200Acl
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "authenticated-read")
                                          then ViewObjectStorageBucketACLResponseBody200AclEnumString_authenticated_read
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom")
                                                then ViewObjectStorageBucketACLResponseBody200AclEnumString_custom
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private")
                                                      then ViewObjectStorageBucketACLResponseBody200AclEnumString_private
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read")
                                                            then ViewObjectStorageBucketACLResponseBody200AclEnumString_public_read
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read-write")
                                                                  then ViewObjectStorageBucketACLResponseBody200AclEnumString_public_read_write
                                                                  else ViewObjectStorageBucketACLResponseBody200AclEnumOther val)
-- | Defines the data type for the schema ViewObjectStorageBucketACLResponseBodyDefault
-- 
-- 
data ViewObjectStorageBucketACLResponseBodyDefault = ViewObjectStorageBucketACLResponseBodyDefault {
  -- | errors
  viewObjectStorageBucketACLResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ViewObjectStorageBucketACLResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (viewObjectStorageBucketACLResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (viewObjectStorageBucketACLResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON ViewObjectStorageBucketACLResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ViewObjectStorageBucketACLResponseBodyDefault" (\obj -> GHC.Base.pure ViewObjectStorageBucketACLResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
