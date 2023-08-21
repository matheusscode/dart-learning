void main() {
  //String  variableString = "Matheus"
  //O String é utilizado para criar strings
  String variableName = "Matheus";

  //int variableWhole = 19
  //O int é usado para trabalhar com números inteiros
  int variableAge = 19;

  //bool variableBoolean = false
  //O bool é usado para trabalhar com valores true ou false
  bool variableIsTrue = true;

  //List<String> variableStringList = ["Matheus", "Mario", "Thallys"];
  //A List<String> é usado para trabalhar com lista
  //O <String> na frente do List indica que é uma lista de Strings
  List<String> variableListNames = ["Matheus", "Mario", "Thallys"];
  List<int> variableListNumbers = [1, 2, 3, 4, 5, 6];

  //Print é usado como console.log() no JavaScript.
  //Ele mostrar valores de variaveis e retorno de funções
  print(variableName);
  print(variableAge);
  print(variableIsTrue);

  //Aqui eu posso selecionar a posição do item que está na lista utilizando colchetes []
  print(variableListNames[1]);
  //Assim como no JavaScript, também é possível concatenar mas em vez de usar `` é utilizado o '' da mesma forma
  print('${variableListNames[0]} - ${variableListNames[1]}');

  //Também é possivel declarar váriaveis sem especificar os seus tipos:

  var name = "Raphael";
  var year = 33;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  var userData = {
    'id': 1,
    'name': 'Matheus',
    'lastName': 'Figueiredo',
    'email': 'matheussdev3@gmail.com',
    'age': 19,
    'location': {'country': 'Brazil', 'state': 'Amazonas', 'city': 'Manaus'}
  };
  print(name);
  print(year);
  print(antennaDiameter);
  print(flybyObjects);
  print(image);

  var user = User.fromJson(userData);

  print(user.name);
}

//O Required garante que seja atribuido um valor a variavel
//O Final serve para garantir que o valor atribuido a variável seja único e não pode ser modificado

class User {
  final int id;
  final String name;
  final String lastName;
  final String email;
  final int age;
  final Location location;

  User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.age,
    required this.location,
  });

  /*

  Factory Constructor:

  O modificador factory é usado para criar um construtor de fábrica em uma classe.
  Um construtor de fábrica não precisa criar uma nova instância da classe sempre que 
  é chamado.Ele pode reutilizar instâncias existentes ou criar instâncias de tipos 
  diferentes, dependendo da lógica interna. Isso permite maior flexibilidade na criação
  de objetos.
  
   */

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      lastName: json['lastName'],
      email: json['email'],
      age: json['age'],
      location: Location.fromJson(json['location']),
    );

    /*

  fromJson Method:

  O método fromJson é frequentemente usado em conjunto com o construtor de fábrica
  para converter dados de um formato específico, como JSON, em uma instância de classe.
  Ele é geralmente usado em classes que representam objetos serializáveis, onde os dados
  são lidos de uma fonte externa, como um arquivo JSON ou uma API web.
  
   */
  }
}

class Location {
  final String country;
  final String state;
  final String city;

  Location({
    required this.country,
    required this.state,
    required this.city,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      country: json['country'],
      state: json['state'],
      city: json['city'],
    );
  }
}
