module Divisores where

divisores::Int -> [Int]
divisores n = [x | x <- [1..n], mod n x == 0]

{- 
  7. Crie uma função que retorne a lista 
  de todos os divisores de um dado número. 

  * Utiliza compreensao de listas
  
  [ <operacao Item> | Item <- <entrada> , <condicao>] -> Retorna nova lista
-}