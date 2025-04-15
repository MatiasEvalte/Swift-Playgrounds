import UIKit

/// Classes são tipos de referencias(references types);
/// Classes apontam para o mesmo endereço de memória, assim alterando os valores...
class MacBook {
  var color: String
  var year: Int
  
  init(color: String, year: Int) {
    self.color = color
    self.year = year
  }
}

let macBookGabi = MacBook(color: "A cor é preto", year: 2021)
let macBookMatias = macBookGabi
macBookMatias.color = "Agora a cor é branca"

print(macBookGabi.color) //"Agora a cor é branca"
print(macBookMatias.color) // "Agora a cor é branca"

/// Structs são referencias de valores(value types);
/// Structs cada apontamento cria um novo endereço de memória, assim mantendo os valores e não os substituindo...
struct Book {
  var title: String
  var subTitle: String
}

let bookGabi = Book(title: "O filme é bom mesmo", subTitle: "top")
var bookMatias = bookGabi
bookMatias.title = "O filme é muito ruim"

print(bookGabi.title) // "O filme é bom mesmo"
print(bookMatias.title) // "O filme é muito ruim"
