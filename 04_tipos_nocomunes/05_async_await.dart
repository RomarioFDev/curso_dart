import 'dart:io';

/**
 * Un await no funciona sino esta dentro de un async.
 * Si a una funcion se le agrega el async siempre retornara un Future.
 */

void main(List<String> args) async {
  String path =
      Directory.current.path + '/04_tipos_nocomunes/assets/personas.txt';

  leerArchivo(path).then(print); // Future asincrono

  String leer = await leerArchivo(path); // Future sincrono con async/await
  print('======== Sincrono ========');
  print(leer);

  print('Fin del main');
}

Future<String> leerArchivo(String path) async {
  File file = new File(path);
  return file.readAsString();
}
