//Linguagens que tem null-safety.
// - Kotlin
// - Swift

//Linguagens que não tem null-safety.
// - Java
// - Swift

//Oque é null-safety?

/*
  O null-safety trás uma inteligencia onde as variaveis não podem receber valores nulos.
*/

void main() {
  //Neste caso caso a váriavel nome vai ocasionar em um futuro erro, pois não foi atribuido nenhum valor a ela.
  //Resultando em um valor nulo.
  //String nome;

  /*
  : Error: Non-nullable variable 'nome' must be assigned before it can be used.
  2-null-safety.dart:41
  print(nome);
        ^^^^

  O erro acima ocasinou em um valor não atribuido a váriavel nome.
  */

  //Mas é possivel receber um valor nulo, fazendo-o não ficar obrigátorio.
  //Para isso é necessário fazer a seguinte alteração.
  //String? nome;
  //Acrescentando o sinal de interrogação "?", isso deixara o valor opcional ou não obrigátorio.

  // String? nome;

  //Para garantir que o valor não é e não esteja nulo.
  //Basta colocar um ponto de "!" exclamação no final da váriavel.

  /*
  Exception has occurred.
  _TypeError (Null check operator used on a null value)

  O erro ocasinou porque justamente a variavel não tem valor.
  Mas caso eu atribua um valor há váriavel durante algum processo.

  ex: nome = ABC;

  ele séra impresso normalmente

    print(nome!);
  */

  /*
  : Warning: Operand of null-aware operation '!' has type 'String' which excludes null.
  2-null-safety.dart:54
  print(nome!);

        ^

  O erro é ocasionado pois indica que não é necessário ter um ponto de exclamção "!",
  pois a váriavel já tem um valor atribuido a ela. 

    String? nome;
    nome = 'ABC';
    print(nome!);
    
  */

  //Oque é o Late? ele é como uma fala dizendo o seguinte,
  // "Depois da primeira vez que essa váriavel lastName receber um valor"
  // "Ela vai ter uma carregamento, atribuição de valor tardio"
  // "Esse valor nunca mais vai poder receber um valor de null"

  /*
  : Error: Late variable 'lastName' without initializer is definitely unassigned.
  2-null-safety.dart:76
  print(lastName);
        ^^^^^^^^

  O erro é ocasionado porque ele ainda não recebeu um valor.

    late String lastName;
    print(lastName);

  Após a atribuição

    late String lastName;
    lastName = "Figueiredo"
    print(lastName);
  */

  late String lastName;
  lastName = "Matheus";
  print(lastName);


  /*
  A value of type 'Null' can't be assigned to a variable of type 'String'.
  Try changing the type of the variable, or casting the right-hand type to 'String'.dartinvalid_assignment
  Type: Null
  
  O erro ocasionou porque o lastName como foi atribuido o late, nunca mais vai poder receber um valor nulo.

    late String lastName;
    lastName = "Matheus";
    print(lastName);
    lastName = null;
  */

}