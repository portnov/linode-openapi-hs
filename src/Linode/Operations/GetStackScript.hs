-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getStackScript
module Linode.Operations.GetStackScript where

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

-- | > GET /linode/stackscripts/{stackscriptId}
-- 
-- Returns all of the information about a specified StackScript, including the contents of the script.
getStackScript :: forall m . Linode.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ stackscriptId: The ID of the StackScript to look up.
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response GetStackScriptResponse) -- ^ Monadic computation which returns the result of the operation
getStackScript stackscriptId = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetStackScriptResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetStackScriptResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      StackScript)
                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetStackScriptResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        GetStackScriptResponseBodyDefault)
                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/linode/stackscripts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel stackscriptId)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Represents a response of the operation 'getStackScript'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetStackScriptResponseError' is used.
data GetStackScriptResponse =
   GetStackScriptResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetStackScriptResponse200 StackScript -- ^ A single StackScript.
  | GetStackScriptResponseDefault GetStackScriptResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data GetStackScriptResponseBodyDefault = GetStackScriptResponseBodyDefault {
  -- | errors
  getStackScriptResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetStackScriptResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= getStackScriptResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= getStackScriptResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetStackScriptResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetStackScriptResponseBodyDefault" (\obj -> GHC.Base.pure GetStackScriptResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'GetStackScriptResponseBodyDefault' with all required fields.
mkGetStackScriptResponseBodyDefault :: GetStackScriptResponseBodyDefault
mkGetStackScriptResponseBodyDefault = GetStackScriptResponseBodyDefault{getStackScriptResponseBodyDefaultErrors = GHC.Maybe.Nothing}
