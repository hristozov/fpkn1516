import Unit
import Data.List

-- Връща минималния елемент в списък. foldl1 е като accumulate, като взима
-- първия елемент в списъка за начална стойност.
min' l = foldl1 min l

selsort [] = []
selsort l = minElement : selsort (delete minElement l) where
  minElement = min' l

main = do {
  assertEqual [1, 1, 2, 2, 3, 4, 5, 7, 8, 9] (selsort [1, 8, 2, 4, 9, 1, 2, 5, 7, 3]);
}
