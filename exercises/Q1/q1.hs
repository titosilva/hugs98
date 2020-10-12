module Q1 where

has_same_elements_in_order :: [Double] -> [Double] -> Bool
has_same_elements_in_order lx ly = case (lx, ly) of
    ([], []) -> True
    ([], _ ) -> False
    (_ , []) -> False
    (x:xs, y:ys) -> if x==y then has_same_elements_in_order xs ys
                            else False

