
lista :: [Integer] -> Integer
lista (x:xs) = x   -- devuelve el primer elemento

lista2 :: [Integer] -> [Integer]
lista2 (x:xs) = xs  -- devuelve la cola de la lista

lista3 :: [Integer] -> Integer -> [Integer]
lista3 a b = b:a

main = do
    print (lista [1,2,3,4,5])   -- imprime 1
    print (lista2 [1,2,3,4,5])  -- imprime [2,3,4,5]
    print (lsita3 [1,2,3,4,5])
