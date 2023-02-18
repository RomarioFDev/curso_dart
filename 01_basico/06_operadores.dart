main() {
  // Operadores de asignación
  int a = 10 +
      5; // 15 Significa que la variable a toma el valor de la suma de 10 y 5

  int? b;
  // b ??= 20; // 20 Significa que si b es null, entonces b toma el valor de 20

  // Operadores condicionales
  int c = 23;
  String resp = c > 25 ? 'C es mayor a 25' : 'C es menor o igual a 25';

  int d =
      b ?? a; // 15 Significa que si b es null, entonces d toma el valor de a
  // print(d);

  // Operadores relacionales
  // Todos retornan un valor booleano
  /*
  > Mayor que
  < Menor que
  >= Mayor o igual que
  <= Menor o igual que
  == Revisa si dos objetos son iguales
  != Revisa si dos objetos son diferentes  
  */
  String persona1 = 'Fernando';
  String persona2 = 'Alberto';
  // print(persona1 == persona2);
  // print(persona1 != persona2);

  int x = 20, y = 30;
  // print(x > y);
  // print(x < y);
  // print(x >= y);
  // print(x <= y);

  // Operadores de tipo
  int i = 10;
  String j = '10';

  print(i is int); // Revisa si i es de tipo int
  print(j is! int); // Revisa si j no es de tipo int
}
