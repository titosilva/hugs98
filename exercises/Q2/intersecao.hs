[] /\ ys = []

(x:xs) /\ ys | membro x ys = x: xs /\ ys
			 | otherwise   = xs /\ ys
membro z [] = False
membro z (w:ws) = z == w || membro z ws