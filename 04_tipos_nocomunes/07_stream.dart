import 'dart:async';

/**
 * Los stream son asincronos, es decir, no se ejecutan en el mismo hilo de ejecucion que el resto del codigo.
 */

void main(List<String> args) {
  final streamController = StreamController(); // Crear un StreamController

  streamController.stream.listen(
    (data) => print(data), // data es el valor que se emite por los sink.add()
    onError: (error) => print(
        'Error: $error'), // error es el valor que se emite por los sink.addError()
    onDone: () => print(
        'Mision cumplida'), // onDone se ejecuta cuando se cierra el stream con sink.close() o cuando se cancela con sink.cancel()
    cancelOnError:
        false, // cancelOnError cancela el stream cuando se emite un error con sink.addError() si es true y no lo hace si es false
  );

  streamController.sink.add('Apolo 11');
  streamController.sink.add('Apolo 12');
  streamController.sink.add('Apolo 13');
  streamController.sink
      .addError('Huoston, tenemos un problema'); // Emite un error
  streamController.sink.add('Apolo 14');
  streamController.sink.close(); // Cierra el stream

  print('Fin del main');
}
