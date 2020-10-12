area_circ :: Float -> Float 
area_circ r  = pi*r^2

-- Calcula distancia entre 2 pontos cartesianos de coordenadas (x,y) (a,b)
dist :: (Float,Float) -> (Float,Float) -> Float
dist (x,y) (a,b) = sqrt ((a - x)^2 + (b - y)^2)

-- verifica se ponto (x,y) esta dentro da circunferencia de raio r e centro (a,b)
dentro_circ :: (Float, Float) -> Float -> (Float, Float) -> Bool
dentro_circ (x, y) r (a,b) 
  | (dist (x, y) (a,b) <= r ) = True
  | otherwise = False

{- 
  15. Escreva uma função que verifique se um ponto (x,y) 
  está dentro de uma circunferência de raio R e com centro localizado num ponto (a,b). 

  Tendo o centro do circulo (a,b) ,se a distancia entre os pontos < raio -> esta dentro da circunferencia

-}