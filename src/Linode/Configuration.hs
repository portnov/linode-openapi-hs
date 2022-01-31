-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}

-- | Contains the default configuration
module Linode.Configuration where

import qualified Data.Text
import qualified GHC.Types 
import qualified Linode.Common

-- | The default url specified by the OpenAPI specification
-- 
-- @https://api.linode.com/v4@
defaultURL = Data.Text.pack "https://api.linode.com/v4"
-- | The default application name used in the @User-Agent@ header which is based on the @info.title@ field of the specification
-- 
-- @Linode API@
defaultApplicationName = Data.Text.pack "Linode API"
-- | The default configuration containing the 'defaultURL' and no authorization
defaultConfiguration = Linode.Common.Configuration defaultURL Linode.Common.anonymousSecurityScheme GHC.Types.True defaultApplicationName
