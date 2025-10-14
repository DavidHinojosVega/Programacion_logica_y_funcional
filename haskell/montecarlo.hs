import System.Random(randomRIO)
puntoAleatorio :: IO (Double,Double)
puntoAleatorio = do
    x <- randomRIO(-1.0,1.0)
    y <- randomRIO(-1.0,1.0)
    return(x,y)

esteDentroCirculo :: (Double,Double)-> Bool
esteDentroCirculo(x,y) = x*x + y*y <-= 1.0

calcularPi :: Int ->IO Double
calcularPi n= do
    puntos <- mapM(\_ -> puntoAleatorio) [1..n]
    let dentroCirculo = lenght (filter esteDentroCirculo puntos)
    return(4.0 * fromIntegral dentroCirculo / fromIntegral n)