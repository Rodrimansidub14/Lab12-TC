-- Lista inicial de colores
listaInicial :: [String]
listaInicial = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]

-- Lista de elementos a eliminar
elementosAEliminar :: [String]
elementosAEliminar = ["amarillo", "café", "blanco"]

-- Filtrar la lista inicial eliminando los elementos indicados
listaFiltrada :: [String]
listaFiltrada = filter (\x -> not (elem x elementosAEliminar)) listaInicial

-- Función principal
main :: IO ()
main = do
    putStrLn "Lista inicial:"
    print listaInicial

    putStrLn "\nElementos a eliminar:"
    print elementosAEliminar

    putStrLn "\nLista después de eliminar los elementos:"
    print listaFiltrada
