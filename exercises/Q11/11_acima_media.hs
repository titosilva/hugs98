soma_lista [] = 0
soma_lista (x:xs) = x + soma_lista xs

size_list [] = 0
size_list (x:xs) = 1 + size_list xs

-- Retorna media da lista - Arrendonda para baixo
media :: [Int] -> Int
media lista = (soma_lista lista) `div` (size_list lista)

-- Retorna lista de valores acima da media 
acima_media :: [Int] -> [Int]
acima_media [] = []
acima_media lista = [x | x <- lista, x > (media lista)]

-- Retorna o numero de valores acima da media na lista
qtd_acima_media [_] = 1
qtd_acima_media lista = size_list (acima_media lista)


{- 
  11. Escreva uma função que receba uma lista e retorne 
  o número de elementos que estão acima da média dos valores da lista.

  * Utilizando as funções: 

  soma_lista -> soma dos elementos da lista 
  size_list -> tamanho da lista
  media -> calcula media dos elementos da lista
  acima_media -> lista de elementos acima da media
  qtd_acima_media -> retorna a quantida de elementos acima da media da lista
-}