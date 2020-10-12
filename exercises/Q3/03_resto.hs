resto :: Int -> Int -> Int
resto 0 _ = 0
resto _ 0 = 0
resto n i = (mod n i)

{- 3. Escreva uma função que calcule o resto de uma divisão de dois números inteiros.-}