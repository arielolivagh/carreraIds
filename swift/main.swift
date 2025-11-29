import Foundation

struct Articulo{
    var nombre:String
    var cantidad: Int
}

func registroArticulo() -> Articulo{
    print("-- REGISTRAR ARTICULOS --")
    print("Ingresa el articulo:")
    let nombre = readLine()!
    print( "Ingresa la cantidad de exitencias:")
    let cantidad = Int(readLine()!)!
    return Articulo(nombre: nombre,cantidad: cantidad)
}

func mostrarlistado(articulos:[Articulo]){
    print("-- LISTADO DE ARTICULOS --")
    for( indice, articulo) in articulos.enumerated(){
        print("Articulo \(indice + 1): \(articulo.nombre)   Cantidad: \(articulo.cantidad)")
    }
}

func consultadeArticulo(articulos:[Articulo]){
    print("-- CONSULTA DE ARTICULOS --")
    print("Ingresa el nombre del articulo a consultar")
    let nombre = readLine()!
    for( indice, articulo) in articulos.enumerated(){
        if articulo.nombre == nombre{
            print("Articulo \(indice + 1): \(articulo.nombre)   Cantidad: \(articulo.cantidad)")
            break
        }
    }
}

var articulos: [Articulo] = []
var opcion = 0
repeat{
    sleep(5)
    print("""
    ##########################
    # 1.- Registro          #
    # 2.- Listado           #
    # 3.- Consulta          #
    # 4.- Salir             #
    # Selecciona una opción:#
    #########################
    """)
    opcion = (Int(readLine()!))!
    switch opcion{
        case 1:
            let nuevoArticulo = registroArticulo()
            articulos.append(nuevoArticulo)
            print("-- Articulo registrado Correctamente --")
        case 2:
            mostrarlistado(articulos:articulos)
        case 3:
            consultadeArticulo(articulos:articulos)
        case 4:
            print("Salir")
        default:
            print("Opción no validad")
    }
}while opcion != 4
            
