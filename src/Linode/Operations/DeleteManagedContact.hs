-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation deleteManagedContact
module Linode.Operations.DeleteManagedContact where

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

-- | > DELETE /managed/contacts/{contactId}
-- 
-- Deletes a Managed Contact.
deleteManagedContact :: forall m . Linode.Common.MonadHTTP m => GHC.Types.Int -- ^ contactId: The ID of the contact to access.
  -> Linode.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteManagedContactResponse) -- ^ Monadic computation which returns the result of the operation
deleteManagedContact contactId = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteManagedContactResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteManagedContactResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                    Data.Aeson.Types.Internal.Object)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteManagedContactResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                      DeleteManagedContactResponseBodyDefault)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (Linode.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/managed/contacts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ Linode.Common.stringifyModel contactId)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Represents a response of the operation 'deleteManagedContact'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteManagedContactResponseError' is used.
data DeleteManagedContactResponse =
   DeleteManagedContactResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | DeleteManagedContactResponse200 Data.Aeson.Types.Internal.Object -- ^ Contact deleted successfully.
  | DeleteManagedContactResponseDefault DeleteManagedContactResponseBodyDefault -- ^ Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @components.responses.ErrorResponse.content.application\/json.schema@ in the specification.
-- 
-- 
data DeleteManagedContactResponseBodyDefault = DeleteManagedContactResponseBodyDefault {
  -- | errors
  deleteManagedContactResponseBodyDefaultErrors :: (GHC.Maybe.Maybe ([ErrorObject]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteManagedContactResponseBodyDefault
    where toJSON obj = Data.Aeson.Types.Internal.object ("errors" Data.Aeson.Types.ToJSON..= deleteManagedContactResponseBodyDefaultErrors obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("errors" Data.Aeson.Types.ToJSON..= deleteManagedContactResponseBodyDefaultErrors obj)
instance Data.Aeson.Types.FromJSON.FromJSON DeleteManagedContactResponseBodyDefault
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteManagedContactResponseBodyDefault" (\obj -> GHC.Base.pure DeleteManagedContactResponseBodyDefault GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors"))
-- | Create a new 'DeleteManagedContactResponseBodyDefault' with all required fields.
mkDeleteManagedContactResponseBodyDefault :: DeleteManagedContactResponseBodyDefault
mkDeleteManagedContactResponseBodyDefault = DeleteManagedContactResponseBodyDefault{deleteManagedContactResponseBodyDefaultErrors = GHC.Maybe.Nothing}
