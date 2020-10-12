module Q14 where

evens_vs_odds :: [Int] -> ([Int], [Int])
evens_vs_odds numbers = ((map (even) numbers), (map (odd) numbers))