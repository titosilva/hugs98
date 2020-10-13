module Primos where

divisores::Int -> [Int]
divisores n = [x | x <- [1..n], mod n x == 0]

ehPrimo :: Int -> Bool
ehPrimo n = length(divisores n) == 2

primos :: Int -> [Int]
primos n = [x | x <- [1..n], ehPrimo x] 

{- 
  16. Crie uma função que gere os números primos menores que um dado número. 

  1 - pega os divisores de um numero -> se modulo de n e x eh igual a 0
  2 - Verifica se eh primo -> lista de divisores possui apenas 2 elementos: [1,n]
  3 - Cria uma lista dos primos ate n 
-}