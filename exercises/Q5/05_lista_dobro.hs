-- retorna lista com valores dobrados
dobro :: [Int] -> [Int]
dobro [] = []
dobro (x:xs) = [x*2] ++ dobro xs

-- forma 2: map
dobro2 :: [Int] -> [Int]
dobro2 (x:xs) = map (\x ->x*2) (x:xs)

-- dobro da soma dos elementos lista
dobro_soma lista = 2 * (soma_lista lista 0)
  where soma_lista [] acc = acc
        soma_lista (x:xs) acc = soma_lista xs (x + acc)


-- dobro da soma dos elementos lista 2
dobro_soma2 [] = 0
dobro_soma2 lista = 2 * (soma_lista2 lista)

-- soma dos elementos lista 
soma_lista2 [] = 0
soma_lista2 (x:xs) = x + soma_lista2 xs

{- 5. Escreva uma função que calcule o dobro da soma dos elementos de uma lista.-}