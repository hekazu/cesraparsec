module CesraParsec (toParser) where

import Test.Falsify.Generator (Gen)

import CesraParsec.Types
import CesraParsec.Parser (toParser)

toGenerator :: Cesra a -> Gen a
toGenerator = undefined

mkOne :: a -> Cesra' a
mkOne input = One input
