module CesraParsec.Types where

import Data.List.NonEmpty (NonEmpty)

data Cesra a = Cesra (NonEmpty (Cesra' a))

data Cesra' a = One a | Many a | Choice (NonEmpty (Cesra' a)) | Optional (Cesra' a)
