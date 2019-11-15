//: [Previous](@previous)

import Foundation

//: ## Swift
//: Y finalmente, unas preguntas sobre Swift. ¡Vamos!

//: 1. Escribe un hola mundo en Swift
//Respuesta:
let hello = "hello world!"

print(hello)

//: 2. Escribe un ejemplo de String Interpolation
//Respuesta:
let language = "Swift"

print("Yo programo en \(language)")

//: 3. Declara un arreglo constante de tipo Double con los siguientes elementos: 1.0, 5.0, 33.3, 45.5
//Respuesta:
let array: [Double] = [1.0, 5.0, 33.3, 45.5]
 
//: 4. Usando un ciclo for, itera sobre el arreglo de la pregunta 3 e imprime cada uno de los elementos del arreglo.
//Respuesta:
for item in array {
    print(item)
}
//: 5. Declara la enumeración llamada Planet y como casos ocupa los siguientes:
//: - Mercury
//: - Venus
//: - Earth
//: - Mars
//Respuesta
enum Planets {
    case Mercury, Venus, Earth, Mars
}

//: 6. Declara una constante llamada planet y asígnale un caso de la enumeración Planet (el caso que quieras)
//Respuesta:
let planet = Planets.Mercury
//: 7. Utiliza una sentencia switch para imprimir un mensaje dependiendo del valor de la constante planet de la pregunta 6.
//Respuesta:
func switchPlanet(planeta: Planets){
 switch planet
 {
 case .Venus:
    print("el planeta es Venus")
 case .Earth:
     print("el planeta es la Tierra")
 case .Mars:
    print ("el planeta es Marte")
 default:
    print("el planeta es Mercurio")
}
}
switchPlanet(planeta: planet)
//: 8. Declara una función llamada ```haveRead()``` que tome como parámetro el arreglo de cadenas ```books``` y la cadena ```book``` y regrese un booleano. La idea de esta función es determinar si la cadena ```book``` se encuentra dentro de ```books```

let books = ["The Fountainhead", "Atlas Shrugged", "Why Nations Fail", "The Principles of Scientific Managemente", "Factfulness", "Outliers", "El Existencialismo es un Humanismo", "The Old Man and the Sea", "El Arte de Pensar", "Six Easy Pieces", "Steve Jobs", "Energy and Civilization: A History", "A History of Judaism"]
let book = "Outliers"

//Respuesta:
func haveRead(books: Array<String>, book: String) -> Bool{
  var  result = false
    for bookItem in books {
        if bookItem == book {
            result = true
        }
    }
     print(result)
    return result
   
}
//: 9. Finalmente, crea una estructura llamada ```Person``` que tenga como atributos:
//: - name: String
//: - books: [String]
//: y como método la función de la pregunta 8 sin el parámetro ```books```.
//: Crea una instancia de ```Person``` e inicialízala con tu nombre y ocupa la constante ```books``` de la pregunta 8 como segundo parámetro. Finalmente, manda a llamar al método ```haveRead()``` y pásale como parámetro la constante ```book``` de la pregunta 8. El resultado debe ser un booleano.

//Respuesta

struct Person {
   var name: String
   var  books:[String]
   func haveRead(books: Array<String>, book: String) -> Bool{
     var  result = false
       for bookItem in books {
           if bookItem == book {
               result = true
           }
       }
       print(result)
       return result
       
   }
}

var Persona = Person(name: "Adriana", books: books)
Persona.haveRead(books: books, book: book)
