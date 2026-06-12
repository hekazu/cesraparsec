module CesraParsec.Parser where

import qualified Data.List.NonEmpty as NE
import Text.Parsec
--FIXME: String -> Text
import Text.Parsec.String
import qualified Text.Parsec.Char as P

import CesraParsec.Types

toParser :: Cesra String -> Parser String
toParser (Cesra c's) = foldr1 (<>) $ fmap primeToParser c's

primeToParser :: Cesra' String -> Parser String
primeToParser (One a) = P.string a
primeToParser (Many a) = undefined --many1 $ P.string a
primeToParser (Choice a) = choice . NE.toList $ NE.map primeToParser a
primeToParser (Optional a) = option "" $ primeToParser a
