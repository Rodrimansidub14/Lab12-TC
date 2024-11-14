
import System.IO

numbers :: [Int]
numbers = [1,2,3,4,5,6,7,8,9,10]

getExponent :: IO Int
getExponent = do
    putStrLn "Ingresa el exponente n (entero positivo):"
    input <- getLine
    let n = read input :: Int
    if n > 0 then
        return n
    else do
        putStrLn "Por favor, ingresa un entero positivo."
        getExponent

calculatePowers :: Int -> [Int] -> [Int]
calculatePowers n = map (\x -> x ^ n)

main :: IO ()
main = do
    n <- getExponent
    let result = calculatePowers n numbers
    putStrLn $ "Lista original: " ++ show numbers
    putStrLn $ "Lista con potencias n-esimas (n = " ++ show n ++ "): " ++ show result
