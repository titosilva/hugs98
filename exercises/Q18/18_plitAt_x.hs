import Data.Char

-- posicao item lista 
posicao :: Char -> [Char] -> Int
posicao n [] = -1
posicao n (x:xs)
  | x == n = 0
  | (posicao n xs /= -1) = 1 + posicao n xs 
  | otherwise = -1

-- retira a barra da segunda string
retira_barra :: ([Char], [Char]) -> ([Char], [Char])
retira_barra (str1, str2) = (str1, tail str2) 

-- separa string em "/" em uma tupla com as 2 partes
separador :: [Char] -> ([Char], [Char])
separador [] = ([], [])
separador str = retira_barra (splitAt (posicao '/' str) str)

{-  
  18. Escreva uma função que quebre uma string em duas partes 
  no ponto onde estiver uma “/” e retorne uma tupla com as duas partes.

  posicao: pega o indice da "/"
  splitAt: divide string em uma tupla, onde estiver a barra
  retira_barra: apenas retira primeiro item, a barra, da segunda lista da tupla retornada pelo splitAt

  Se tiver mais de uma barra, vai ignorar a segunda
-}