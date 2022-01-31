-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaginationEnvelope
module Linode.Types.PaginationEnvelope where

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

-- | Defines the object schema located at @components.schemas.PaginationEnvelope@ in the specification.
-- 
-- An envelope for paginated response. When accessing a collection through a GET endpoint, the results are wrapped in this envelope which includes metadata about those results. Results are presented within a \`data\` array. See [Pagination](\/docs\/api\/\#pagination) for more information.
data PaginationEnvelope = PaginationEnvelope {
  -- | page: The current [page](\/docs\/api\/\#pagination).
  paginationEnvelopePage :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | pages: The total number of [pages](\/docs\/api\/\#pagination).
  , paginationEnvelopePages :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | results: The total number of results.
  , paginationEnvelopeResults :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaginationEnvelope
    where toJSON obj = Data.Aeson.Types.Internal.object ("page" Data.Aeson.Types.ToJSON..= paginationEnvelopePage obj : "pages" Data.Aeson.Types.ToJSON..= paginationEnvelopePages obj : "results" Data.Aeson.Types.ToJSON..= paginationEnvelopeResults obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("page" Data.Aeson.Types.ToJSON..= paginationEnvelopePage obj) GHC.Base.<> (("pages" Data.Aeson.Types.ToJSON..= paginationEnvelopePages obj) GHC.Base.<> ("results" Data.Aeson.Types.ToJSON..= paginationEnvelopeResults obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PaginationEnvelope
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaginationEnvelope" (\obj -> ((GHC.Base.pure PaginationEnvelope GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "results"))
-- | Create a new 'PaginationEnvelope' with all required fields.
mkPaginationEnvelope :: PaginationEnvelope
mkPaginationEnvelope = PaginationEnvelope{paginationEnvelopePage = GHC.Maybe.Nothing,
                                          paginationEnvelopePages = GHC.Maybe.Nothing,
                                          paginationEnvelopeResults = GHC.Maybe.Nothing}
