
replaceStr :: String -> String -> String -> String
replaceStr [] old new = []
replaceStr str old new = loop str
  where
    loop [] = []
    loop str =
      let (prefix, rest) = splitAt n str
      in
        if old == prefix                -- found an occurrence?
        then new ++ loop rest           -- yes: replace it
        else head str : loop (tail str) -- no: keep looking
    n = length old

{- 
  19. Crie uma função que substitua uma dada palavra por outra em uma frase. 
  Se a palavra não estiver contida na frase, deverá retornar a frase original. 

  substr "Ola mundo" "mundo" "pessoal" -> "Ola pessoal"

-}