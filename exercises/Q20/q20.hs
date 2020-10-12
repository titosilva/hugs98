module Q20 where

-- Recebe uma funcao sobre uma tripla
-- Recebe tres listas
-- Retorna uma lista de resultados
map3 :: ((a, b, c) -> d) -> [a] -> [b] -> [c] -> [d]
map3 f lx ly lz = case (lx, ly, lz) of
    ([], _, _) -> []
    (_, [], _) -> []
    (_, _, []) -> []
    otherwise -> (f (x, y, z)) : map3 f xs ys zs
    where
        (x:xs) = lx;
        (y:ys) = ly;
        (z:zs) = lz;
