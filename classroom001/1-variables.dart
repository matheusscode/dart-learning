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

  var name = "Maykel";
  var year = 33;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  print(name);
  print(year);
  print(antennaDiameter);
  print(flybyObjects);
  print(image);
}
