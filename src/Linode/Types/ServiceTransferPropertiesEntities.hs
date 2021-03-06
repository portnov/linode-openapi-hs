-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ServiceTransferPropertiesEntities
module Linode.Types.ServiceTransferPropertiesEntities where

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

-- | Defines the object schema located at @components.schemas.ServiceTransferPropertiesEntities@ in the specification.
-- 
-- A collection of the services to include in this transfer request, separated by type.
data ServiceTransferPropertiesEntities = ServiceTransferPropertiesEntities {
  -- | linodes: An array containing the IDs of each of the Linodes included in this transfer.
  serviceTransferPropertiesEntitiesLinodes :: (GHC.Maybe.Maybe ([GHC.Types.Int]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ServiceTransferPropertiesEntities
    where toJSON obj = Data.Aeson.Types.Internal.object ("linodes" Data.Aeson.Types.ToJSON..= serviceTransferPropertiesEntitiesLinodes obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("linodes" Data.Aeson.Types.ToJSON..= serviceTransferPropertiesEntitiesLinodes obj)
instance Data.Aeson.Types.FromJSON.FromJSON ServiceTransferPropertiesEntities
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ServiceTransferPropertiesEntities" (\obj -> GHC.Base.pure ServiceTransferPropertiesEntities GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "linodes"))
-- | Create a new 'ServiceTransferPropertiesEntities' with all required fields.
mkServiceTransferPropertiesEntities :: ServiceTransferPropertiesEntities
mkServiceTransferPropertiesEntities = ServiceTransferPropertiesEntities{serviceTransferPropertiesEntitiesLinodes = GHC.Maybe.Nothing}
