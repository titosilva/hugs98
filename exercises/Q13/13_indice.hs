-- posicao item lista 
posicao :: Int -> [Int] -> Int
posicao n [] = -1
posicao n (x:xs)
  | x == n = 0
  | (posicao n xs /= -1) = 1 + posicao n xs 
  | otherwise = -1

{- 
  13. Escreva uma função que receba uma lista e 
  retorne a posição de um dado elemento nessa lista, 
  iniciando de 0. 

  Se elemento for igual a cabeça da lista -> retorna 0
  Se retorno da chamada recursiva com o rabo for diferente de -1 -> soma recursiva de +1 ate posicao
  Senao retorna -1 -> i
  Condição de parada -> todos elementos da lista percorridos -> lista vazia [] -> retorna -1

  Retorna -1 para pegar o indice a partir de 0!

  [0..] !! 5 -> retorna o valor no indice 5!
  [1..] !! 5 -> 4
-}