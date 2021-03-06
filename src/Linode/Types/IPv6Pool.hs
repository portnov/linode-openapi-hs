-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IPv6Pool
module Linode.Types.IPv6Pool where

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

-- | Defines the object schema located at @components.schemas.IPv6Pool@ in the specification.
-- 
-- An object representing an IPv6 pool.
data IPv6Pool = IPv6Pool {
  -- | prefix: The prefix length of the address, denoting how many addresses can be assigned from this pool calculated as 2 \<sup>128-prefix\<\/sup>.
  iPv6PoolPrefix :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | range: The IPv6 range of addresses in this pool.
  , iPv6PoolRange :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | region: The region for this pool of IPv6 addresses.
  , iPv6PoolRegion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | route_target: The last address in this block of IPv6 addresses.
  , iPv6PoolRouteTarget :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IPv6Pool
    where toJSON obj = Data.Aeson.Types.Internal.object ("prefix" Data.Aeson.Types.ToJSON..= iPv6PoolPrefix obj : "range" Data.Aeson.Types.ToJSON..= iPv6PoolRange obj : "region" Data.Aeson.Types.ToJSON..= iPv6PoolRegion obj : "route_target" Data.Aeson.Types.ToJSON..= iPv6PoolRouteTarget obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("prefix" Data.Aeson.Types.ToJSON..= iPv6PoolPrefix obj) GHC.Base.<> (("range" Data.Aeson.Types.ToJSON..= iPv6PoolRange obj) GHC.Base.<> (("region" Data.Aeson.Types.ToJSON..= iPv6PoolRegion obj) GHC.Base.<> ("route_target" Data.Aeson.Types.ToJSON..= iPv6PoolRouteTarget obj))))
instance Data.Aeson.Types.FromJSON.FromJSON IPv6Pool
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IPv6Pool" (\obj -> (((GHC.Base.pure IPv6Pool GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prefix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "range")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "route_target"))
-- | Create a new 'IPv6Pool' with all required fields.
mkIPv6Pool :: IPv6Pool
mkIPv6Pool = IPv6Pool{iPv6PoolPrefix = GHC.Maybe.Nothing,
                      iPv6PoolRange = GHC.Maybe.Nothing,
                      iPv6PoolRegion = GHC.Maybe.Nothing,
                      iPv6PoolRouteTarget = GHC.Maybe.Nothing}
