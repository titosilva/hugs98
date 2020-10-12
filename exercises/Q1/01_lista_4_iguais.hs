iguais_4 :: [Int] -> Bool
iguais_4 list 
  | length list == 4 = iguais list
  | otherwise = False

-- Verifica se todos elementos da lista são iguais
iguais :: [Int] -> Bool
iguais [] = True
iguais [_] = True
iguais (x:xs) = x == (head xs) && iguais xs 


{- 
  1. Verificar se em uma lista de 4 elementos, todos sao iguais, retorna bool
  - Verifique se possui 4 elementos 
  - Verifique se todos elementos sao iguais

  ] -> False
  [1] -> False
  [0,0,0,0] -> True

  * iguais_4 -> Verifica se lista possui 4 elementos
  * iguais -> Verifica se todos elementos da lista sao iguais

  x == (head xs) -> se x for igual a cabeca do rabo (elemento seguinte)
  iguais xs -> chamada recursiva com o rabo
-}