module Q2 where

intersect :: [Double] -> [Double] -> [Double]
intersect lx ly = filter (elem_rev ly) lx where{
    elem_rev l item = elem item l;
}