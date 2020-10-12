module Q16 where

is_prime :: Int -> Bool
-- fazer um map para gerar uma lista de restos para todos os numeros menores que x
-- ver se ha algum zero na lista gerada. Se houver, x e divisel por algum n, e, assim,
-- nao e primo
is_prime x = not (elem 0 (map (\n -> x `mod` n) [2..x-1]))

get_primes_less_than :: Int -> [Int]
-- Pegar toda a lista de 2 a x-1, e filtrar deixando apenas numeros primos
get_primes_less_than x = filter (is_prime) [2..x-1]