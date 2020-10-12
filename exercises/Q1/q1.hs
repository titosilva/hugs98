module Q1 where

has_same_elements_in_order :: [Double] -> [Double] -> Bool
has_same_elements_in_order lx ly = case (lx, ly) of
    ([], []) -> True
    ([], _ ) -> False
    (_ , []) -> False
    (x:xs, y:ys) -> if x==y then has_same_elements_in_order xs ys
                            else False

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

