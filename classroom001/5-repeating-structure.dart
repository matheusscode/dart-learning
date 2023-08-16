//Estruturas de Repetição

void main() {
  //FOR
  //Dada determinada condição, ele vai ser executado até que essa condição não seja mais satisfeita

  for (int i = 1; i <= 10; i++) {
    print(i * 2);
  }

  /*
    Diferença entre WHILE E FOR

    - No FOR tem condição de execução
    
    - No WHILE tem uma condição de execução
      mas só vai separado quando determinada
      condição aocntecer. Posso deixa-lo infinito
 
  */

  //WHILE

  int count = 10;

  while(count != 1) {
    // logic
    count = count - 1;
    print('Loop -> $count');
  }

}
