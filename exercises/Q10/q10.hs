module Q10 where

count_occurrences :: Double -> [Double] -> Int
count_occurrences item l = rec_count_occurrences 0 item l where {
    rec_count_occurrences count item [] = count;
    rec_count_occurrences count item (x:xs)
        | x==item = rec_count_occurrences (count+1) item xs
        | otherwise = rec_count_occurrences count item xs
        ;
}