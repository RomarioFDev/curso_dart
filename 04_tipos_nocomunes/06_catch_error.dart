void main(List<String> args) {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      throw 'Error!, de peticion';
    }

    return 'Resuelve un String';
  });

  // Todo: Controlar las ecepciones siempre es correcto cuando se manejan Futures.
  timeout.then(print).catchError((error) => print(error));

  print('Fin del main');
}
