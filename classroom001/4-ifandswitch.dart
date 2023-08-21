//IF e SWITCH
// Estruturas de controle de Fluxo

void main() {
  //IF

  //Ele funciona inteiramente igual ao JavaScript

  bool moveOn = true;
  int firstNumber = 10;
  int secondNumber = 5;

  if (moveOn) {
    print("Andar");
  } else {
    print("Parar");
  }

  if (firstNumber > secondNumber) {
    print('${firstNumber} é maior que ${secondNumber}');
  } else {
    print('$firstNumber não é maior que $secondNumber');
  }

  //SWITCH

  int initialValue = 2;

  switch (initialValue) {
    case 0:
      print('ZERO');
      break;
    case 1:
      print('UM');
      break;
    case 2:
      print('DOIS');
      break;
    default:
      print('PADRÃO');
  }

  //Caso eu coloque um valor na váriavel initialValue cujo não exista no switch.
  //Ele não ira printar nada. Ex: initialValue = 5

  /*
    int initialValue = 5;

    switch (initialValue) {
      case 0:
        print('ZERO');
        break;
     case 1:
       print('UM');
        break;
      case 2:
        print('DOIS');
        break;
    }
   */

  /*

   int initialValue = 5;

   switch (initialValue) {
     case 0:
        print('ZERO');
        break;
     case 1:
       print('UM');
       break;
     case 2:
       print('DOIS');
       break;
     default:
        print('PADRÃO');
   }

  Caso eu coloque um valor default, independete de se exister ou não uma case para determinada
  váriavel, ele mostra-ra o valor de default que no caso é 'PADRÃO'  
   */
}
