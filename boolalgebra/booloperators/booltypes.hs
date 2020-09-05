-- Library of conversions from types to bool

{-- binfromint
--- Function that takes an int as argument, and returns a [Bool] that represents the binary
--- of the number using True/False
--}
binfromint :: Int -> [Bool]
_binfromint_rec :: Int -> [Bool] -> [Bool]
-- Recursively apply the algorithm
_binfromint_rec 0 bools = bools
-- Use div here to divide Int and get only the quotient
_binfromint_rec x bools = (x `mod` 2==1) : (_binfromint_rec (x `div` 2) bools)
-- Wrapper: reverse the result, and return it 
binfromint x = reverse (_binfromint_rec x [])

binfromstr :: String -> [Bool]
_binfromstr_rec :: String -> [Bool] -> [Bool]
_binfromstr_rec "" bools = bools
_binfromstr_rec (sh:st) bools
    | sh == '0' = False : (_binfromstr_rec st bools)
    | otherwise = True : (_binfromstr_rec st bools)
binfromstr s = _binfromstr_rec s []

intfrombin :: [Bool] -> Int
_intfrombin_rec :: [Bool] -> Int -> Int -> Int
_intfrombin_rec []      x y = x
_intfrombin_rec (bh:bt) x y
    | bh == True  = _intfrombin_rec bt (x+y) (y*2)
    | bh == False = _intfrombin_rec bt x (y*2)
intfrombin bools = (_intfrombin_rec (reverse bools) 0 1)