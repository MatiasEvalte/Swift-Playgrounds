import UIKit

protocol TesteDelegate {
  func teste1() // Método obrigatorio...
  func teste2() // Método opcional...
}

// Extension para deixar método como opcional...

extension TesteDelegate {
  func teste2() { }
}


// Struct que implementa apenas os métodos não opcionais...

struct TesteClass: TesteDelegate {
  func teste1() {
    // Implementar regras do método...
  }
}
