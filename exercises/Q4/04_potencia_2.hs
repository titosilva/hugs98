-- exponenciacao de 2 numeros
power x 0 = 1
power x y = x * power x (y-1)

-- Funcao 2^n
power2 0 = 1
power2 n = 2 * power2 (n-1)


{- 4. Utilize recursão para criar uma função que calcule 2^n .-}