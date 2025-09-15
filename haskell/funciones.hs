
-- EN LA PARTE SUPERIOR SE CREAN TODAS LAS FUNCIONES
sumar:: Integer -> Integer -> Integer
sumar x y = x + y
factorial :: Integer -> Integer 
factorial 0 = 1
factorial n = n * factorial (n-1)

-- AQUI SE PONE TODO EL CODIGO
menu:: IO()
menu = do
    putStrLn("---MENU----")
    putStrLn("Que es lo que deseas hacer?")
    putStrLn("1 Factorial")
    putStrLn("2 Suma")
    opcion <- getLine
    case opcion of --switch
        "1" -> do
            putStrLn("Introduce tu numero")
            numero_uno <- getLine --TOMA EL VALOR INGRESADO
            let x = read numero_uno :: Integer --AlMACENA EL VALOR INGRESADO Y LO CONVIERTE A ENTERO
            putStrLn("El resultado es " ++ show(factorial x))
        "2" -> do
            putStrLn("Introduce el primer numero")
            numero_uno <- getLine --TOMA EL VALOR INGRESADO
            let n1 = read numero_uno :: Integer
            putStrLn("Introduce el segundo numero")
            numero_dos <- getLine --TOMA EL VALOR INGRESADO
            let n2 = read numero_dos :: Integer
            putStrLn("El resultado es " ++ show(sumar n1 n2))
            
        
        
-- AQUI SE MANDA A LLAMAR EL CODIGO EN ESTE CASO MENU
main:: IO ()
main = menu