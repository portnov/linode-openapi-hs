-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation updateObjectStorageBucketACL
module Linode.Operations.UpdateObjectStorageBucketACL where

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

-- | > PUT /object-storage/buckets/{clusterId}/{bucket}/object-acl
-- 
-- Update an Object\'s configured Access Control List (ACL) in this Object Storage bucket.
-- ACLs define who can access your buckets and objects and specify the level of access
-- granted to those users.
-- 
-- 
-- This endpoint is available for convenience. It is recommended that instead you
-- use the more [fully-featured S3 API](https:\/\/docs.ceph.com\/en\/latest\/radosgw\/s3\/objectops\/\#set-object-acl) directly.
updateObjectStorageBucketACL :: forall m s . (Linode.Common.MonadHTTP m, Linode.Common.SecurityScheme s) => Linode.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.Maybe UpdateObjectStorageBucketACLRequestBody                                                                                   -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response UpdateObjectStorageBucketACLResponse)) -- ^ Monad containing the result of the operation
updateObjectStorageBucketACL config
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either UpdateObjectStorageBucketACLResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> UpdateObjectStorageBucketACLResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      UpdateObjectStorageBucketACLResponseBody200)
                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> UpdateObjectStorageBucketACLResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        UpdateObjectStorageBucketACLResponseBodyDefault)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/object-storage/buckets/{clusterId}/{bucket}/object-acl") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > PUT /object-storage/buckets/{clusterId}/{bucket}/object-acl
-- 
-- The same as 'updateObjectStorageBucketACL' but returns the raw 'Data.ByteString.Char8.ByteString'
updateObjectStorageBucketACLRaw :: forall m s . (Linode.Common.MonadHTTP m,
                                                 Linode.Common.SecurityScheme s) =>
                                   Linode.Common.Configuration s ->
                                   GHC.Base.Maybe UpdateObjectStorageBucketACLRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
updateObjectStorageBucketACLRaw config
                                body = GHC.Base.id (Linode.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/object-storage/buckets/{clusterId}/{bucket}/object-acl") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > PUT /object-storage/buckets/{clusterId}/{bucket}/object-acl
-- 
-- Monadic version of 'updateObjectStorageBucketACL' (use with 'Linode.Common.runWithConfiguration')
updateObjectStorageBucketACLM :: forall m s . (Linode.Common.MonadHTTP m,
                                               Linode.Common.SecurityScheme s) =>
                                 GHC.Base.Maybe UpdateObjectStorageBucketACLRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response UpdateObjectStorageBucketACLResponse))
updateObjectStorageBucketACLM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either UpdateObjectStorageBucketACLResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> UpdateObjectStorageBucketACLResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                       UpdateObjectStorageBucketACLResponseBody200)
                                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> UpdateObjectStorageBucketACLResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         UpdateObjectStorageBucketACLResponseBodyDefault)
                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/object-storage/buckets/{clusterId}/{bucket}/object-acl") [] body Linode.Common.RequestBodyEncodingJSON)
-- | > PUT /object-storage/buckets/{clusterId}/{bucket}/object-acl
-- 
-- Monadic version of 'updateObjectStorageBucketACLRaw' (use with 'Linode.Common.runWithConfiguration')
updateObjectStorageBucketACLRawM :: forall m s . (Linode.Common.MonadHTTP m,
                                                  Linode.Common.SecurityScheme s) =>
                                    GHC.Base.Maybe UpdateObjectStorageBucketACLRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (Linode.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
updateObjectStorageBucketACLRawM body = GHC.Base.id (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack "/object-storage/buckets/{clusterId}/{bucket}/object-acl") [] body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema updateObjectStorageBucketACLRequestBody
-- 
-- 
data UpdateObjectStorageBucketACLRequestBody = UpdateObjectStorageBucketACLRequestBody {
  -- | acl: The Access Control Level of the bucket, as a canned ACL string. For more fine-grained control of ACLs, use the S3 API directly.
  updateObjectStorageBucketACLRequestBodyAcl :: UpdateObjectStorageBucketACLRequestBodyAcl
  -- | name: The \`name\` of the object for which to update its Access Control List (ACL). Use the [Object Storage Bucket Contents List](\/docs\/api\/object-storage\/\#object-storage-bucket-contents-list) endpoint to access all object names in a bucket.
  , updateObjectStorageBucketACLRequestBodyName :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON UpdateObjectStorageBucketACLRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "acl" (updateObjectStorageBucketACLRequestBodyAcl obj) : (Data.Aeson..=) "name" (updateObjectStorageBucketACLRequestBodyName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "acl" (updateObjectStorageBucketACLRequestBodyAcl obj) GHC.Base.<> (Data.Aeson..=) "name" (updateObjectStorageBucketACLRequestBodyName obj))
instance Data.Aeson.Types.FromJSON.FromJSON UpdateObjectStorageBucketACLRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateObjectStorageBucketACLRequestBody" (\obj -> (GHC.Base.pure UpdateObjectStorageBucketACLRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "acl")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name"))
-- | Defines the enum schema updateObjectStorageBucketACLRequestBodyAcl
-- 
-- The Access Control Level of the bucket, as a canned ACL string. For more fine-grained control of ACLs, use the S3 API directly.
data UpdateObjectStorageBucketACLRequestBodyAcl
    = UpdateObjectStorageBucketACLRequestBodyAclEnumOther Data.Aeson.Types.Internal.Value
    | UpdateObjectStorageBucketACLRequestBodyAclEnumTyped Data.Text.Internal.Text
    | UpdateObjectStorageBucketACLRequestBodyAclEnumString_authenticated_read
    | UpdateObjectStorageBucketACLRequestBodyAclEnumString_custom
    | UpdateObjectStorageBucketACLRequestBodyAclEnumString_private
    | UpdateObjectStorageBucketACLRequestBodyAclEnumString_public_read
    | UpdateObjectStorageBucketACLRequestBodyAclEnumString_public_read_write
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON UpdateObjectStorageBucketACLRequestBodyAcl
    where toJSON (UpdateObjectStorageBucketACLRequestBodyAclEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (UpdateObjectStorageBucketACLRequestBodyAclEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (UpdateObjectStorageBucketACLRequestBodyAclEnumString_authenticated_read) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "authenticated-read"
          toJSON (UpdateObjectStorageBucketACLRequestBodyAclEnumString_custom) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom"
          toJSON (UpdateObjectStorageBucketACLRequestBodyAclEnumString_private) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private"
          toJSON (UpdateObjectStorageBucketACLRequestBodyAclEnumString_public_read) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read"
          toJSON (UpdateObjectStorageBucketACLRequestBodyAclEnumString_public_read_write) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read-write"
instance Data.Aeson.FromJSON UpdateObjectStorageBucketACLRequestBodyAcl
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "authenticated-read")
                                          then UpdateObjectStorageBucketACLRequestBodyAclEnumString_authenticated_read
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom")
                                                then UpdateObjectStorageBucketACLRequestBodyAclEnumString_custom
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private")
                                                      then UpdateObjectStorageBucketACLRequestBodyAclEnumString_private
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read")
                                                            then UpdateObjectStorageBucketACLRequestBodyAclEnumString_public_read
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read-write")
                                                                  then UpdateObjectStorageBucketACLRequestBodyAclEnumString_public_read_write
                                                                  else UpdateObjectStorageBucketACLRequestBodyAclEnumOther val)
-- | Represents a response of the operation 'updateObjectStorageBucketACL'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'UpdateObjectStorageBucketACLResponseError' is used.
data UpdateObjectStorageBucketACLResponse =                                                      
   UpdateObjectStorageBucketACLResponseError GHC.Base.String                                     -- ^ Means either no matching case available or a parse error
  | UpdateObjectStorageBucketACLResponse200 UpdateObjectStorageBucketACLResponseBody200          -- ^ The Object\'s canned ACL and policy.
  | UpdateObjectStorageBucketACLResponseDefault UpdateObjectStorageBucketACLResponseBodyDefault  -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema UpdateObjectStorageBucketACLResponseBody200
-- 
-- 
data UpdateObjectStorageBucketACLResponseBody200 = UpdateObjectStorageBucketACLResponseBody200 {
  -- | acl: The Access Control Level of the bucket, as a canned ACL string. For more fine-grained control of ACLs, use the S3 API directly.
  updateObjectStorageBucketACLResponseBody200Acl :: (GHC.Base.Maybe UpdateObjectStorageBucketACLResponseBody200Acl)
  -- | acl_xml: The full XML of the object\'s ACL policy.
  , updateObjectStorageBucketACLResponseBody200Acl_xml :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON UpdateObjectStorageBucketACLResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "acl" (updateObjectStorageBucketACLResponseBody200Acl obj) : (Data.Aeson..=) "acl_xml" (updateObjectStorageBucketACLResponseBody200Acl_xml obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "acl" (updateObjectStorageBucketACLResponseBody200Acl obj) GHC.Base.<> (Data.Aeson..=) "acl_xml" (updateObjectStorageBucketACLResponseBody200Acl_xml obj))
instance Data.Aeson.Types.FromJSON.FromJSON UpdateObjectStorageBucketACLResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateObjectStorageBucketACLResponseBody200" (\obj -> (GHC.Base.pure UpdateObjectStorageBucketACLResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "acl")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "acl_xml"))
-- | Defines the enum schema UpdateObjectStorageBucketACLResponseBody200Acl
-- 
-- The Access Control Level of the bucket, as a canned ACL string. For more fine-grained control of ACLs, use the S3 API directly.
data UpdateObjectStorageBucketACLResponseBody200Acl
    = UpdateObjectStorageBucketACLResponseBody200AclEnumOther Data.Aeson.Types.Internal.Value
    | UpdateObjectStorageBucketACLResponseBody200AclEnumTyped Data.Text.Internal.Text
    | UpdateObjectStorageBucketACLResponseBody200AclEnumString_authenticated_read
    | UpdateObjectStorageBucketACLResponseBody200AclEnumString_custom
    | UpdateObjectStorageBucketACLResponseBody200AclEnumString_private
    | UpdateObjectStorageBucketACLResponseBody200AclEnumString_public_read
    | UpdateObjectStorageBucketACLResponseBody200AclEnumString_public_read_write
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON UpdateObjectStorageBucketACLResponseBody200Acl
    where toJSON (UpdateObjectStorageBucketACLResponseBody200AclEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (UpdateObjectStorageBucketACLResponseBody200AclEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (UpdateObjectStorageBucketACLResponseBody200AclEnumString_authenticated_read) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "authenticated-read"
          toJSON (UpdateObjectStorageBucketACLResponseBody200AclEnumString_custom) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom"
          toJSON (UpdateObjectStorageBucketACLResponseBody200AclEnumString_private) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private"
          toJSON (UpdateObjectStorageBucketACLResponseBody200AclEnumString_public_read) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read"
          toJSON (UpdateObjectStorageBucketACLResponseBody200AclEnumString_public_read_write) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read-write"
instance Data.Aeson.FromJSON UpdateObjectStorageBucketACLResponseBody200Acl
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "authenticated-read")
                                          then UpdateObjectStorageBucketACLResponseBody200AclEnumString_authenticated_read
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "custom")
                                                then UpdateObjectStorageBucketACLResponseBody200AclEnumString_custom
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "private")
                                                      then UpdateObjectStorageBucketACLResponseBody200AclEnumString_private
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read")
                                                            then UpdateObjectStorageBucketACLResponseBody200AclEnumString_public_read
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public-read-write")
                                                                  then UpdateObjectStorageBucketACLResponseBody200AclEnumString_public_read_write
                                                                  else UpdateObjectStorageBucketACLResponseBody200AclEnumOther val)
-- | Defines the data type for the schema UpdateObjectStorageBucketACLResponseBodyDefault
-- 
-- 
data UpdateObjectStorageBucketACLResponseBodyDefault = UpdateObjectStorageBucketACLResponseBodyDefault {
  -- | errors
  updateObjectStorageBucketACLResponseBodyDefaultErrors :: (GHC.Base.Maybe ([] ErrorObject))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON UpdateObjectStorageBucketACLResponseBodyDefault
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "errors" (updateObjectStorageBucketACLResponseBodyDefaultErrors obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "errors" (updateObjectStorageBucketACLResponseBodyDefaultErrors obj))
instance Data.Aeson.Types.FromJSON.FromJSON UpdateObjectStorageBucketACLResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UpdateObjectStorageBucketACLResponseBodyDefault" (\obj -> GHC.Base.pure UpdateObjectStorageBucketACLResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))