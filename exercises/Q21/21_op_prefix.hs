import Data.Char

-- operador prefixado, retorna -1 se entrada for invalida, pode usar Float tbm
prefix :: [Char] -> Int
prefix [] = -1
prefix (x:xs) 
  | x == '+' = (read (head(words xs)) :: Int) + (read (last(words xs)) :: Int)
  | x == '-' = (read (head(words xs)) :: Int) - (read (last(words xs)) :: Int)
  | x == '/' = (read (head(words xs)) :: Int) `div` (read (last(words xs)) :: Int)
  | x == '*' = (read (head(words xs)) :: Int) * (read (last(words xs)) :: Int)
  | otherwise = -1


{- 
  Implemente um avaliador de expressões PRÉ-FIXADAS que receba uma string contendo 
  a expressão na forma pré-fixada e retorne o seu valor. 

  As operações que ele deve reconhecer são: 

  soma, subtração, divisão e multiplicação de números inteiros.

  words x -> quebra string por espaços em lista de strings
  head, last -> pega primeiro ou ultimo elemento, no caso uma string
  read "44" :: Int -> Transforma string para Int ou Float
-}