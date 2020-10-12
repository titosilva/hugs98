bissexto :: Int -> Bool
bissexto ano 
  | ((mod ano 4 == 0 && mod ano 100 /= 0) || mod ano 400 == 0) = True
  | otherwise = False

{- 6. Escreva uma função que verifique se um ano é bissexto.  
  - São bissextos todos os anos múltiplos de 400, p.ex: 1600, 2000, 2400, 2800...
  - São bissextos todos os múltiplos de 4, (exceto se for múltiplo de 100 mas não de 400), 
    p.ex: 1996, 2000, 2004, 2008, 2012, 2016, 2020...
  - Não são bissextos todos os demais anos.

  * Se ano é divisivel por 4 e não por 100 OU é divisivel de 400 -> True
-}