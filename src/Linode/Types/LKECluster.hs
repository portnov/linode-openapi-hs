-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema LKECluster
module Linode.Types.LKECluster where

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

-- | Defines the object schema located at @components.schemas.LKECluster@ in the specification.
-- 
-- A Kubernetes cluster.
data LKECluster = LKECluster {
  -- | control_plane: Defines settings for the Kubernetes Control Plane. Allows for the enabling of High Availability (HA) for Control Plane Components. Enabling High Avaialability for LKE is an **irreversible** change.
  lKEClusterControlPlane :: (GHC.Maybe.Maybe LKEClusterControlPlane')
  -- | created: When this Kubernetes cluster was created.
  , lKEClusterCreated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: This Kubernetes cluster\'s unique ID.
  , lKEClusterId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | k8s_version: The desired Kubernetes version for this Kubernetes cluster in the format of &lt;major&gt;.&lt;minor&gt;, and the latest supported patch version will be deployed.
  , lKEClusterK8sVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | label: This Kubernetes cluster\'s unique label for display purposes only.
  -- Labels have the following constraints:
  -- 
  --   * UTF-8 characters will be returned by the API using escape
  --     sequences of their Unicode code points. For example, the
  --     Japanese character *か* is 3 bytes in UTF-8 (\`0xE382AB\`). Its
  --     Unicode code point is 2 bytes (\`0x30AB\`). APIv4 supports this
  --     character and the API will return it as the escape sequence
  --     using six 1 byte characters which represent 2 bytes of Unicode
  --     code point (\`\"\\u30ab\"\`).
  --   * 4 byte UTF-8 characters are not supported.
  --   * If the label is entirely composed of UTF-8 characters, the API
  --     response will return the code points using up to 193 1 byte
  --     characters.
  -- 
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 32
  -- * Minimum length of 1
  , lKEClusterLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | region: This Kubernetes cluster\'s location.
  , lKEClusterRegion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | tags: An array of tags applied to the Kubernetes cluster. Tags are for organizational purposes only.
  , lKEClusterTags :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | updated: When this Kubernetes cluster was updated.
  , lKEClusterUpdated :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON LKECluster
    where toJSON obj = Data.Aeson.Types.Internal.object ("control_plane" Data.Aeson.Types.ToJSON..= lKEClusterControlPlane obj : "created" Data.Aeson.Types.ToJSON..= lKEClusterCreated obj : "id" Data.Aeson.Types.ToJSON..= lKEClusterId obj : "k8s_version" Data.Aeson.Types.ToJSON..= lKEClusterK8sVersion obj : "label" Data.Aeson.Types.ToJSON..= lKEClusterLabel obj : "region" Data.Aeson.Types.ToJSON..= lKEClusterRegion obj : "tags" Data.Aeson.Types.ToJSON..= lKEClusterTags obj : "updated" Data.Aeson.Types.ToJSON..= lKEClusterUpdated obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("control_plane" Data.Aeson.Types.ToJSON..= lKEClusterControlPlane obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= lKEClusterCreated obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= lKEClusterId obj) GHC.Base.<> (("k8s_version" Data.Aeson.Types.ToJSON..= lKEClusterK8sVersion obj) GHC.Base.<> (("label" Data.Aeson.Types.ToJSON..= lKEClusterLabel obj) GHC.Base.<> (("region" Data.Aeson.Types.ToJSON..= lKEClusterRegion obj) GHC.Base.<> (("tags" Data.Aeson.Types.ToJSON..= lKEClusterTags obj) GHC.Base.<> ("updated" Data.Aeson.Types.ToJSON..= lKEClusterUpdated obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON LKECluster
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LKECluster" (\obj -> (((((((GHC.Base.pure LKECluster GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "control_plane")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "k8s_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "region")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tags")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated"))
-- | Create a new 'LKECluster' with all required fields.
mkLKECluster :: LKECluster
mkLKECluster = LKECluster{lKEClusterControlPlane = GHC.Maybe.Nothing,
                          lKEClusterCreated = GHC.Maybe.Nothing,
                          lKEClusterId = GHC.Maybe.Nothing,
                          lKEClusterK8sVersion = GHC.Maybe.Nothing,
                          lKEClusterLabel = GHC.Maybe.Nothing,
                          lKEClusterRegion = GHC.Maybe.Nothing,
                          lKEClusterTags = GHC.Maybe.Nothing,
                          lKEClusterUpdated = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.LKECluster.properties.control_plane@ in the specification.
-- 
-- Defines settings for the Kubernetes Control Plane. Allows for the enabling of High Availability (HA) for Control Plane Components. Enabling High Avaialability for LKE is an **irreversible** change.
data LKEClusterControlPlane' = LKEClusterControlPlane' {
  -- | high_availability: Defines whether High Availability is enabled for the Control Plane Components of the cluster. Defaults to \`false\`.
  lKEClusterControlPlane'HighAvailability :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON LKEClusterControlPlane'
    where toJSON obj = Data.Aeson.Types.Internal.object ("high_availability" Data.Aeson.Types.ToJSON..= lKEClusterControlPlane'HighAvailability obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("high_availability" Data.Aeson.Types.ToJSON..= lKEClusterControlPlane'HighAvailability obj)
instance Data.Aeson.Types.FromJSON.FromJSON LKEClusterControlPlane'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LKEClusterControlPlane'" (\obj -> GHC.Base.pure LKEClusterControlPlane' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "high_availability"))
-- | Create a new 'LKEClusterControlPlane'' with all required fields.
mkLKEClusterControlPlane' :: LKEClusterControlPlane'
mkLKEClusterControlPlane' = LKEClusterControlPlane'{lKEClusterControlPlane'HighAvailability = GHC.Maybe.Nothing}
