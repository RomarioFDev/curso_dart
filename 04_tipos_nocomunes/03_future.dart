/**
 * Los Future son objetos que representan una operación asincrona que puede o no devolver un valor.
 * - Cuando se crea un Future, se le pasa una función que se ejecutará en un hilo secundario.
 * - Cuando la operación asincrona finaliza, el Future se completa con un valor o un error.
 * - Cuando un Future se completa, se puede llamar a then() o catchError() para ejecutar una función.
 * - Cuando se llama a then() o catchError(), se crea un nuevo Future que se completa con el valor o error devuelto por la función.
 */

void main(List<String> args) {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos despues');
    return 'Resuelve un String';
  });

  timeout.then((texto) => print(texto)); // Mas largo
  timeout.then(print); // Esto es lo mismo que lo de arriba pero mas corto

  print('Fin del main');
}
