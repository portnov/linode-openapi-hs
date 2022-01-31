-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AuthorizedApp
module Linode.Types.AuthorizedApp where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Linode.Common
import Linode.TypeAlias

-- | Defines the object schema located at @components.schemas.AuthorizedApp@ in the specification.
-- 
-- An application you have authorized access to your Account through OAuth.
data AuthorizedApp = AuthorizedApp {
  -- | created: When this app was authorized.
  authorizedAppCreated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expiry: When the app\'s access to your account expires. If \`null\`, the app\'s access must be revoked manually.
  , authorizedAppExpiry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: This authorization\'s ID, used for revoking access.
  , authorizedAppId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | label: The name of the application you\'ve authorized.
  , authorizedAppLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | scopes: The OAuth scopes this app was authorized with.  This defines what parts of your Account the app is allowed to access.
  , authorizedAppScopes :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumbnail_url: The URL at which this app\'s thumbnail may be accessed.
  , authorizedAppThumbnailUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | website: The website where you can get more information about this app.
  , authorizedAppWebsite :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AuthorizedApp
    where toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= authorizedAppCreated obj : "expiry" Data.Aeson.Types.ToJSON..= authorizedAppExpiry obj : "id" Data.Aeson.Types.ToJSON..= authorizedAppId obj : "label" Data.Aeson.Types.ToJSON..= authorizedAppLabel obj : "scopes" Data.Aeson.Types.ToJSON..= authorizedAppScopes obj : "thumbnail_url" Data.Aeson.Types.ToJSON..= authorizedAppThumbnailUrl obj : "website" Data.Aeson.Types.ToJSON..= authorizedAppWebsite obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= authorizedAppCreated obj) GHC.Base.<> (("expiry" Data.Aeson.Types.ToJSON..= authorizedAppExpiry obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= authorizedAppId obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= authorizedAppLabel obj) GHC.Base.<> (("scopes" Data.Aeson.Types.ToJSON..= authorizedAppScopes obj) GHC.Base.<> (("thumbnail_url" Data.Aeson.Types.ToJSON..= authorizedAppThumbnailUrl obj) GHC.Base.<> ("website" Data.Aeson.Types.ToJSON..= authorizedAppWebsite obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON AuthorizedApp
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AuthorizedApp" (\obj -> ((((((GHC.Base.pure AuthorizedApp GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expiry")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "scopes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumbnail_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "website"))
-- | Create a new 'AuthorizedApp' with all required fields.
mkAuthorizedApp :: AuthorizedApp
mkAuthorizedApp = AuthorizedApp{authorizedAppCreated = GHC.Maybe.Nothing,
                                authorizedAppExpiry = GHC.Maybe.Nothing,
                                authorizedAppId = GHC.Maybe.Nothing,
                                authorizedAppLabel = GHC.Maybe.Nothing,
                                authorizedAppScopes = GHC.Maybe.Nothing,
                                authorizedAppThumbnailUrl = GHC.Maybe.Nothing,
                                authorizedAppWebsite = GHC.Maybe.Nothing}
