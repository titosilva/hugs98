inp :: Int -> [Bool] -> Bool
inp idx bools = bools !! idx

t :: [Bool] -> Bool
t _ = True

f :: [Bool] -> Bool
f _ = False

n :: ([Bool] -> Bool) -> ([Bool] -> Bool)
n inp1 bools = not (inp1 bools)

and :: ([Bool] -> Bool) -> ([Bool] -> Bool) -> ([Bool] -> Bool)
and inp1 inp2 bools = (inp1 bools) && (inp2 bools)

or :: ([Bool] -> Bool) -> ([Bool] -> Bool) -> ([Bool] -> Bool)
or inp1 inp2 bools = (inp1 bools) || (inp2 bools)

