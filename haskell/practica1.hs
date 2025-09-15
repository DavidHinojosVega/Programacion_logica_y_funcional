--------------------FUNCIONES---------------------bool----------
absoluto :: Integer -> Integer 
absoluto x = abs x
redondeo :: Double -> Integer
redondeo x = ceiling x
valor_siguiente :: Integer -> Integer
valor_siguiente x = succ x
func_menor :: Integer -> Integer -> Integer
func_menor x y = min x y
func_mayor :: Integer -> Integer -> Integer
func_mayor x y = max x y
func_div_entera :: Integer -> Integer -> Integer
func_div_entera x y = div x y
func_div_modulo :: Integer -> Integer -> Integer
func_div_modulo x y = mod x y
func_ParImpar :: Integer -> Bool
func_ParImpar x = even x
func_redondeoEntero :: Double -> Integer
func_redondeoEntero x = floor x
func_MaximoComun :: Integer -> Integer -> Integer
func_MaximoComun x y = gcd x y
func_NegacionBooleana :: Bool -> Bool
func_NegacionBooleana x = not x
func_NumeroPar :: Integer -> Bool
func_NumeroPar x = odd x
func_EsPositivo :: Integer -> Integer
func_EsPositivo x = signum x
func_segundoElemento :: Integer -> Integer -> Integer
func_segundoElemento x y = snd (x,y)






--------------------FUNCIONES-------------------------------
--------------------CODIGO-------------------------------
menu:: IO()
menu = do
    putStrLn("----------MENU-----------")
    putStrLn("(1)Devolver el valor absoluto de x")
    putStrLn("(2)Redondeo de x")
    putStrLn("(3)Valor siguiente de x")
    putStrLn("(4)Menor de dos numeros")
    putStrLn("(5)Mayor de dos numeros")
    putStrLn("(6)Division entera de dos numeros")
    putStrLn("(7)modulo de dos numeros")
    putStrLn("(8)Calcula si un numero es par")
    putStrLn("(9)numero entero no mayor que x")
    putStrLn("(10)Maximo comun divisor")
    putStrLn("(11)Negacion de un valor booleano")
    putStrLn("(12)Verificar si un numero es noon")
    putStrLn("(13)Devuelve uno si es positivo")
    putStrLn("(14)Retorna el segundo elemento")
    opcion <- getLine
    case opcion of --switch
        "1" -> do
          putStrLn("Ingresa un numero para saber su valor absoluto")
          n <- getLine -- valro ingresado string
          let x = read n :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(absoluto x)) --llamando a la funcion
        "2" -> do
          putStrLn("Ingresa un numero para saber su valor redondeado")
          n <- getLine -- valro ingresado string
          let x = read n :: Double --variable de la funcion
          putStrLn("El resultado es " ++ show(redondeo x))
        "3" -> do
          putStrLn("Ingresa un numero para saber el valor siguiente")
          n <- getLine -- valro ingresado string
          let x = read n :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(valor_siguiente x))
        "4" -> do
          putStrLn("Ingresa un el numero 1")
          n1 <- getLine -- valro ingresado string
          let x1 = read n1 :: Integer --variable de la funcion
          putStrLn("Ingresa un el numero 2")
          n2 <- getLine -- valro ingresado string
          let x2 = read n2 :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(func_menor x1 x2))
        "5" -> do
          putStrLn("Ingresa un el numero 1")
          n1 <- getLine -- valro ingresado string
          let x1 = read n1 :: Integer --variable de la funcion
          putStrLn("Ingresa un el numero 2")
          n2 <- getLine -- valro ingresado string
          let x2 = read n2 :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(func_mayor x1 x2))
        "6" -> do
          putStrLn("Ingresa un el numero 1")
          n1 <- getLine -- valro ingresado string
          let x1 = read n1 :: Integer --variable de la funcion
          putStrLn("Ingresa un el numero 2")
          n2 <- getLine -- valro ingresado string
          let x2 = read n2 :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(func_div_entera x1 x2))
        "7" -> do
          putStrLn("Ingresa un el numero 1")
          n1 <- getLine -- valro ingresado string
          let x1 = read n1 :: Integer --variable de la funcion
          putStrLn("Ingresa un el numero 2")
          n2 <- getLine -- valro ingresado string
          let x2 = read n2 :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(func_div_modulo x1 x2))
        "8" -> do
          putStrLn("Ingresa un numero para saber si es par o no")
          n <- getLine -- valro ingresado string
          let x = read n :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(func_ParImpar x))
        "9" -> do
          putStrLn "Ingresa un numero para saber su parte entera"
          n <- getLine
          let x = read n :: Double
          putStrLn ("El resultado es " ++ show (func_redondeoEntero x))
        "10" -> do
          putStrLn("Ingresa un el numero 1")
          n1 <- getLine -- valro ingresado string
          let x1 = read n1 :: Integer --variable de la funcion
          putStrLn("Ingresa un el numero 2")
          n2 <- getLine -- valro ingresado string
          let x2 = read n2 :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(func_MaximoComun x1 x2))
        "11" -> do
          putStrLn("Ingresa un el numero")
          n1 <- getLine -- valro ingresado string
          let x1 = read n1 :: Bool --variable de la funcion
          putStrLn("El resultado es " ++ show(func_NegacionBooleana x1))
        "12" -> do
          putStrLn("Ingresa un el numero")
          n1 <- getLine -- valro ingresado string
          let x1 = read n1 :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(func_ParImpar x1))
        "13" -> do
          putStrLn("Ingresa un el numero")
          n1 <- getLine -- valro ingresado string
          let x1 = read n1 :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(func_EsPositivo x1))
        "14" -> do
          putStrLn("Ingresa un el numero 1")
          n1 <- getLine -- valro ingresado string
          let x1 = read n1 :: Integer --variable de la funcion
          putStrLn("Ingresa un el numero 2")
          n2 <- getLine -- valro ingresado string
          let x2 = read n2 :: Integer --variable de la funcion
          putStrLn("El resultado es " ++ show(func_segundoElemento x1 x2))
    

main:: IO ()
main = menu