import qualified Data.List as L
import qualified Data.Set as S

subarrays :: [a] -> [[a]]
subarrays [] = []
subarrays (x:xs) = [ x : take i xs | i <- [0..length xs]  ] ++
                    subarrays xs

solve :: (Eq a, Ord a) => [a] -> [a] -> [a]
solve xs ys = getValue $ S.intersection a b
    where a = S.fromList $ subarrays xs
          b = S.fromList $ subarrays ys
          getValue = (\(_, x) -> x) .
                     L.head . L.sortOn (\(l, x) -> -l) .
                     S.toList . S.map (\x -> (length x, x))
