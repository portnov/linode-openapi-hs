-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation tfaConfirm
module Linode.Operations.TfaConfirm where

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

-- | > POST /profile/tfa-enable-confirm
-- 
-- Confirms that you can successfully generate Two Factor codes and enables TFA on your Account. Once this is complete, login attempts from untrusted computers will be required to provide a Two Factor code before they are successful.
tfaConfirm :: forall m . Linode.Common.MonadHTTP m => TfaConfirmRequestBody -- ^ The request body to send
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response TfaConfirmResponse) -- ^ Monadic computation which returns the result of the operation
tfaConfirm body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either TfaConfirmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> TfaConfirmResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                 TfaConfirmResponseBody200)
                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> TfaConfirmResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                   TfaConfirmResponseBodyDefault)
                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/profile/tfa-enable-confirm") GHC.Base.mempty (GHC.Maybe.Just body) Linode.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/profile\/tfa-enable-confirm.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data TfaConfirmRequestBody = TfaConfirmRequestBody {
  -- | tfa_code: The Two Factor code you generated with your Two Factor secret. These codes are time-based, so be sure it is current.
  tfaConfirmRequestBodyTfaCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TfaConfirmRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("tfa_code" Data.Aeson.Types.ToJSON..= tfaConfirmRequestBodyTfaCode obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("tfa_code" Data.Aeson.Types.ToJSON..= tfaConfirmRequestBodyTfaCode obj)
instance Data.Aeson.Types.FromJSON.FromJSON TfaConfirmRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TfaConfirmRequestBody" (\obj -> GHC.Base.pure TfaConfirmRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tfa_code"))
-- | Create a new 'TfaConfirmRequestBody' with all required fields.
mkTfaConfirmRequestBody :: TfaConfirmRequestBody
mkTfaConfirmRequestBody = TfaConfirmRequestBody{tfaConfirmRequestBodyTfaCode = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'tfaConfirm'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'TfaConfirmResponseError' is used.
data TfaConfirmResponse =
   TfaConfirmResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | TfaConfirmResponse200 TfaConfirmResponseBody200 -- ^ TFA enabled successfully
  | TfaConfirmResponseDefault TfaConfirmResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/profile\/tfa-enable-confirm.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data TfaConfirmResponseBody200 = TfaConfirmResponseBody200 {
  -- | scratch: A one-use code that can be used in place of your Two Factor code, in case you are unable to generate one.  Keep this in a safe place to avoid being locked out of your Account.
  tfaConfirmResponseBody200Scratch :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TfaConfirmResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("scratch" Data.Aeson.Types.ToJSON..= tfaConfirmResponseBody200Scratch obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("scratch" Data.Aeson.Types.ToJSON..= tfaConfirmResponseBody200Scratch obj)
instance Data.Aeson.Types.FromJSON.FromJSON TfaConfirmResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TfaConfirmResponseBody200" (\obj -> GHC.Base.pure TfaConfirmResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "scratch"))
-- | Create a new 'TfaConfirmResponseBody200' with all required fields.
mkTfaConfirmResponseBody200 :: TfaConfirmResponseBody200
mkTfaConfirmResponseBody200 = TfaConfirmResponseBody200{tfaConfirmResponseBody200Scratch = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data TfaConfirmResponseBodyDefault = TfaConfirmResponseBodyDefault {
  -- | errors
  tfaConfirmResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TfaConfirmResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= tfaConfirmResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= tfaConfirmResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON TfaConfirmResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TfaConfirmResponseBodyDefault" (\obj -> GHC.Base.pure TfaConfirmResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'TfaConfirmResponseBodyDefault' with all required fields.
mkTfaConfirmResponseBodyDefault :: TfaConfirmResponseBodyDefault
mkTfaConfirmResponseBodyDefault = TfaConfirmResponseBodyDefault{tfaConfirmResponseBodyDefaultErrors = GHC.Maybe.Nothing}
