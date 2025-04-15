import UIKit

/// Codable: Decodifica e Codifica os dados, esse protocolo possui ambos...
/// Decodable: Decodifica os dados Data(JSON) em objeto Swift...
/// Encodable: Codifica os dados Swift em Data(JSON)...

// MARK: - Model User

struct User: Codable {
  let name: String?
  let adress: String?
  let phone: String?
  let number: Int?
  let year: Int?
}

/// Define uma **função chamada `encodeUser`** que retorna um objeto do tipo `Data`.
/// Essa função será responsável por **codificar** um `User` em JSON.
func encodeUser() -> Data {
  var data = Data()
  
  do {
    let user = User(name: "Matias",
                    adress: "dr raul di primio",
                    phone: "(51) 998356062",
                    number: 150,
                    year: 18)
    
    let encoder = JSONEncoder()
    data = try encoder.encode(user)
  } catch {
    print(error)
  }
  
  return data
}

///- Define uma função chamada `decodeUser` que retorna um `User?` (opcional).
///- Essa função será responsável por **decodificar** os dados em um objeto `User`.
func decodeUser() -> User? {
  var user: User?
  let decoder = JSONDecoder()
  do {
    user = try decoder.decode(User.self, from: encodeUser())
  } catch {
    print(error)
  }
  return user
}

// Imprime o valor de User decodificado caso tenha valor...
print(decodeUser() ?? "Decode vazio")
