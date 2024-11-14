import Data.List (sortBy)
import Data.Ord (comparing)

-- Definimos el tipo de datos Item
data Item = Item { make :: String
                 , model :: Int
                 , color :: String
                 } deriving (Show)

-- Lista original de items
items :: [Item]
items =
    [ Item { make = "Nokia", model = 216, color = "Black" }
    , Item { make = "Apple", model = 2, color = "Silver" }
    , Item { make = "Huawei", model = 50, color = "Gold" }
    , Item { make = "Samsung", model = 7, color = "Blue" }
    ]

-- Ordenamos la lista con respecto al campo 'model'
sortedItems :: [Item]
sortedItems = sortBy (comparing model) items

-- Función principal para imprimir el resultado
main :: IO ()
main = do
    putStrLn "Lista original:"
    mapM_ print items

    putStrLn "\nLista ordenada por 'model':"
    mapM_ print sortedItems
