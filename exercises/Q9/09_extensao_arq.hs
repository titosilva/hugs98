extension :: [Char] -> [Char]
extension [] = []
extension (x:xs) 
  | (x == '.') = xs
  | otherwise = extension xs

{- 
  9. Escreva uma função que receba uma string com o nome de um arquivo 
  e retorne a extensão daquele arquivo (considere que a extensão vem depois do último ponto), se existir. 

  Percorre a lista recursivamente, se encontrar o ponto, retorna o restante (rabo) da string
-}