par_impar :: [Int] -> ([Int], [Int])
par_impar [] = ([], [])
par_impar lista = ([x | x <- lista, mod x 2 == 0], [y | y <- lista, mod y 2 /= 0])


{-  
  14. Escreva uma função que receba uma lista de números e retorne uma tupla com 
  uma lista dos números pares e uma lista dos números ímpares.

  Cria uma tupla, utilizando compreensao de listas para formular as 2 listas de pares e impares
-}