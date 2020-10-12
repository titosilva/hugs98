module Q8 where

has_same_elements :: [Double] -> [Double] -> Bool
has_same_elements lx ly = qsort lx == qsort ly where {
    qsort l = case l of
        [] -> []
        [x] -> [x]
        otherwise -> qsort ll ++ [x] ++ qsort lr
        where 
            (x:lx) = l
            ll = [item | item <- lx, item < x]
            lr = [item | item <- lx, item >= x]
}

