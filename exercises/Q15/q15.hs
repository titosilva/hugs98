module Q15 where

circle_contains :: Double -> (Double, Double) -> (Double, Double) -> Bool
circle_contains raio (centerx, centery) (px, py) = ((px - centerx)*(px - centerx) + (py - centery)*(py - centery) <= raio**2)