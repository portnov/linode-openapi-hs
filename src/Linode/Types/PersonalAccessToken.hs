-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PersonalAccessToken
module Linode.Types.PersonalAccessToken where

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

-- | Defines the data type for the schema PersonalAccessToken
-- 
-- A Personal Access Token is a token generated manually to access the API without going through an OAuth login.  Personal Access Tokens can have scopes just like OAuth tokens do, and are commonly used to give access to command-line tools like the Linode CLI, or when writing your own integrations.
data PersonalAccessToken = PersonalAccessToken {
  -- | created: The date and time this token was created.
  personalAccessTokenCreated :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | expiry: When this token will expire.  Personal Access Tokens cannot be renewed, so after this time the token will be completely unusable and a new token will need to be generated.  Tokens may be created with \"null\" as their expiry and will never expire unless revoked.
  , personalAccessTokenExpiry :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | id: This token\'s unique ID, which can be used to revoke it.
  , personalAccessTokenId :: (GHC.Base.Maybe GHC.Integer.Type.Integer)
  -- | label: This token\'s label.  This is for display purposes only, but can be used to more easily track what you\'re using each token for.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100
  -- * Minimum length of 1
  , personalAccessTokenLabel :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | scopes: The scopes this token was created with. These define what parts of the Account the token can be used to access. Many command-line tools, such as the \<a target=\"_top\" href=\"https:\/\/github.com\/linode\/linode-cli\">Linode CLI\<\/a>, require tokens with access to \`*\`. Tokens with more restrictive scopes are generally more secure.
  , personalAccessTokenScopes :: (GHC.Base.Maybe Data.Text.Internal.Text)
  -- | token: The token used to access the API.  When the token is created, the full token is returned here.  Otherwise, only the first 16 characters are returned.
  , personalAccessTokenToken :: (GHC.Base.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PersonalAccessToken
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (personalAccessTokenCreated obj) : (Data.Aeson..=) "expiry" (personalAccessTokenExpiry obj) : (Data.Aeson..=) "id" (personalAccessTokenId obj) : (Data.Aeson..=) "label" (personalAccessTokenLabel obj) : (Data.Aeson..=) "scopes" (personalAccessTokenScopes obj) : (Data.Aeson..=) "token" (personalAccessTokenToken obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (personalAccessTokenCreated obj) GHC.Base.<> ((Data.Aeson..=) "expiry" (personalAccessTokenExpiry obj) GHC.Base.<> ((Data.Aeson..=) "id" (personalAccessTokenId obj) GHC.Base.<> ((Data.Aeson..=) "label" (personalAccessTokenLabel obj) GHC.Base.<> ((Data.Aeson..=) "scopes" (personalAccessTokenScopes obj) GHC.Base.<> (Data.Aeson..=) "token" (personalAccessTokenToken obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PersonalAccessToken
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PersonalAccessToken" (\obj -> (((((GHC.Base.pure PersonalAccessToken GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expiry")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "scopes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "token"))