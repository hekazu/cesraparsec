module CesraParsec where

import Data.List.NonEmpty (NonEmpty)
import Text.Parsec.Text (Parser)
import Test.Falsify.Generator (Gen)

data Cesra a = Cesra (NonEmpty (Cesra' a))

data Cesra' a = One a | Many a | Choice (NonEmpty (Cesra' a)) | Optional (Cesra' a)

toParser :: Cesra a -> Parser a
toParser = undefined

toGenerator :: Cesra a -> Gen a
toGenerator = undefined
