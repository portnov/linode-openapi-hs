-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postImagesUpload
module Linode.Operations.PostImagesUpload where

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

-- | > POST /images/upload
-- 
-- Initiates an Image upload.
-- 
-- This endpoint creates a new private Image object and returns it along
-- with the URL to which image data can be uploaded.
-- 
-- - Image data must be uploaded within 24 hours of creation or the
-- upload will be cancelled and the image deleted.
-- 
-- - Image uploads should be made as an HTTP PUT request to the URL returned in the \`upload_to\`
-- response parameter, with a \`Content-type: application\/octet-stream\` header included in the
-- request. For example:
-- 
--       curl -v \\
--         -H \"Content-Type: application\/octet-stream\" \\
--         --upload-file example.img.gz \\
--         \$UPLOAD_URL \\
--         --progress-bar \\
--         --output \/dev\/null
-- 
-- - Uploaded image data should be compressed in gzip (\`.gz\`) format. The uncompressed disk should be in raw
-- disk image (\`.img\`) format. A maximum compressed file size of 5GB is supported for upload at this time.
-- 
-- **Note:** To initiate and complete an Image upload in a single step, see our guide on how to [Upload an Image](\/docs\/products\/tools\/images\/guides\/upload-an-image\/) using Cloud Manager or the Linode CLI \`image-upload\` plugin.
postImagesUpload :: forall m . Linode.Common.MonadHTTP m => GHC.Maybe.Maybe PostImagesUploadRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response PostImagesUploadResponse) -- ^ Monadic computation which returns the result of the operation
postImagesUpload body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostImagesUploadResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostImagesUploadResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   PostImagesUploadResponseBody200)
                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostImagesUploadResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     PostImagesUploadResponseBodyDefault)
                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/images/upload") GHC.Base.mempty body Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/images\/upload.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostImagesUploadRequestBody = PostImagesUploadRequestBody {
  -- | description: Description for the uploaded Image.
  postImagesUploadRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | label: Label for the uploaded Image.
  , postImagesUploadRequestBodyLabel :: Data.Text.Internal.Text
  -- | region: The region to upload to. Once uploaded, the Image can be used in any region.
  , postImagesUploadRequestBodyRegion :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostImagesUploadRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("description" Data.Aeson.Types.ToJSON..= postImagesUploadRequestBodyDescription obj : "label" Data.Aeson.Types.ToJSON..= postImagesUploadRequestBodyLabel obj : "region" Data.Aeson.Types.ToJSON..= postImagesUploadRequestBodyRegion obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("description" Data.Aeson.Types.ToJSON..= postImagesUploadRequestBodyDescription obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= postImagesUploadRequestBodyLabel obj) GHC.Base.<> ("region" Data.Aeson.Types.ToJSON..= postImagesUploadRequestBodyRegion obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostImagesUploadRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostImagesUploadRequestBody" (\obj -> ((GHC.Base.pure PostImagesUploadRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "region"))
-- | Create a new 'PostImagesUploadRequestBody' with all required fields.
mkPostImagesUploadRequestBody :: Data.Text.Internal.Text -- ^ 'postImagesUploadRequestBodyLabel'
  -> Data.Text.Internal.Text -- ^ 'postImagesUploadRequestBodyRegion'
  -> PostImagesUploadRequestBody
mkPostImagesUploadRequestBody postImagesUploadRequestBodyLabel postImagesUploadRequestBodyRegion = PostImagesUploadRequestBody{postImagesUploadRequestBodyDescription = GHC.Maybe.Nothing,
                                                                                                                               postImagesUploadRequestBodyLabel = postImagesUploadRequestBodyLabel,
                                                                                                                               postImagesUploadRequestBodyRegion = postImagesUploadRequestBodyRegion}
-- | Represents a response of the operation 'postImagesUpload'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostImagesUploadResponseError' is used.
data PostImagesUploadResponse =
   PostImagesUploadResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostImagesUploadResponse200 PostImagesUploadResponseBody200 -- ^ Image Upload object including the upload URL and Image object.
  | PostImagesUploadResponseDefault PostImagesUploadResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/images\/upload.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostImagesUploadResponseBody200 = PostImagesUploadResponseBody200 {
  -- | image: Image object
  postImagesUploadResponseBody200Image :: (GHC.Maybe.Maybe Image)
  -- | upload_to: The URL to upload the Image to.
  , postImagesUploadResponseBody200UploadTo :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostImagesUploadResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("image" Data.Aeson.Types.ToJSON..= postImagesUploadResponseBody200Image obj : "upload_to" Data.Aeson.Types.ToJSON..= postImagesUploadResponseBody200UploadTo obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("image" Data.Aeson.Types.ToJSON..= postImagesUploadResponseBody200Image obj) GHC.Base.<> ("upload_to" Data.Aeson.Types.ToJSON..= postImagesUploadResponseBody200UploadTo obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostImagesUploadResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostImagesUploadResponseBody200" (\obj -> (GHC.Base.pure PostImagesUploadResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "upload_to"))
-- | Create a new 'PostImagesUploadResponseBody200' with all required fields.
mkPostImagesUploadResponseBody200 :: PostImagesUploadResponseBody200
mkPostImagesUploadResponseBody200 = PostImagesUploadResponseBody200{postImagesUploadResponseBody200Image = GHC.Maybe.Nothing,
                                                                    postImagesUploadResponseBody200UploadTo = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data PostImagesUploadResponseBodyDefault = PostImagesUploadResponseBodyDefault {
  -- | errors
  postImagesUploadResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostImagesUploadResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= postImagesUploadResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= postImagesUploadResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostImagesUploadResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostImagesUploadResponseBodyDefault" (\obj -> GHC.Base.pure PostImagesUploadResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'PostImagesUploadResponseBodyDefault' with all required fields.
mkPostImagesUploadResponseBodyDefault :: PostImagesUploadResponseBodyDefault
mkPostImagesUploadResponseBodyDefault = PostImagesUploadResponseBodyDefault{postImagesUploadResponseBodyDefaultErrors = GHC.Maybe.Nothing}
