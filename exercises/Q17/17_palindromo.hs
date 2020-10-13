module Palindromo where

verificaPalindromo :: String -> Bool
verificaPalindromo [] = True
verificaPalindromo [_] = True
verificaPalindromo (x:xs) 
  | x == last(xs) = verificaPalindromo (drop 1 (take (length(x:xs) - 1) (x:xs)))
  | otherwise = False

{- 
  17. Palindrome é uma seqüência de caracteres igual se lida da esquerda para a direita ou ao contrário. 
  As seqüências %&+--+&%, abcdefedcba, 0110 e 0112110 são palíndromes. 
  Escreva uma função que verifique se uma string é uma palindrome. 
  A análise deve ser caracter a caracter, sem reversão da string e verificação de igualdade entre elas.

  take → retorna os n primeiros elementos da lista
  drop → retorna lista sem os n primeiros elementos da lista

  drop 1 (take (length lista - 1) lista) -> retira primeiro e ultimo elemento da lista

-}