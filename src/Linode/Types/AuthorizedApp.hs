-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AuthorizedApp
module Linode.Types.AuthorizedApp where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
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
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Linode.Common

-- | Defines the data type for the schema AuthorizedApp
-- 
-- An application you have authorized access to your Account through OAuth.
data AuthorizedApp = AuthorizedApp {
  -- | created: When this app was authorized.
  authorizedAppCreated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | expiry: When the app\'s access to your account expires. If \`null\`, the app\'s access must be revoked manually.
  , authorizedAppExpiry :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | id: This authorization\'s ID, used for revoking access.
  , authorizedAppId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | label: The name of the application you\'ve authorized.
  , authorizedAppLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | scopes: The OAuth scopes this app was authorized with.  This defines what parts of your Account the app is allowed to access.
  , authorizedAppScopes :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | thumbnail_url: The URL at which this app\'s thumbnail may be accessed.
  , authorizedAppThumbnail_url :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | website: The website where you can get more information about this app.
  , authorizedAppWebsite :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AuthorizedApp
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (authorizedAppCreated obj) : (Data.Aeson..=) "expiry" (authorizedAppExpiry obj) : (Data.Aeson..=) "id" (authorizedAppId obj) : (Data.Aeson..=) "label" (authorizedAppLabel obj) : (Data.Aeson..=) "scopes" (authorizedAppScopes obj) : (Data.Aeson..=) "thumbnail_url" (authorizedAppThumbnail_url obj) : (Data.Aeson..=) "website" (authorizedAppWebsite obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (authorizedAppCreated obj) GHC.Base.<> ((Data.Aeson..=) "expiry" (authorizedAppExpiry obj) GHC.Base.<> ((Data.Aeson..=) "id" (authorizedAppId obj) GHC.Base.<> ((Data.Aeson..=) "label" (authorizedAppLabel obj) GHC.Base.<> ((Data.Aeson..=) "scopes" (authorizedAppScopes obj) GHC.Base.<> ((Data.Aeson..=) "thumbnail_url" (authorizedAppThumbnail_url obj) GHC.Base.<> (Data.Aeson..=) "website" (authorizedAppWebsite obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON AuthorizedApp
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AuthorizedApp" (\obj -> ((((((GHC.Base.pure AuthorizedApp GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expiry")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "scopes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumbnail_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "website"))