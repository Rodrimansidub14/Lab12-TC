-- Definimos la matriz X
x :: [[Int]]
x = [
    [1, 2, 3, 1],
    [4, 5, 6, 0],
    [7, 8, 9, -1]
    ]

-- Función para transponer la matriz usando funciones lambda
transposeMatrix :: [[a]] -> [[a]]
transposeMatrix m
    | any null m = []
    | otherwise = let
        firstRow = map (\row -> head row) m
        restRows = map (\row -> tail row) m
      in
        firstRow : transposeMatrix restRows

-- Función principal
main :: IO ()
main = do
    putStrLn "Matriz original X:"
    mapM_ print x
    putStrLn "\nMatriz transpuesta Y:"
    let y = transposeMatrix x
    mapM_ print y
