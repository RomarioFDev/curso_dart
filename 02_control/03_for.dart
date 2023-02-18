import 'dart:io';
/* main() {
  for (int i = 1; i < 11; i++) {
    print('Index i: ${2 * i}');
  }
} */

main() {
  bool band = true;
  while (band == true) {
    stdout.writeln('¿Que tabla quiere?');
    int tabla = int.parse(stdin.readLineSync() ?? '1');

    print('La tabla es la del $tabla');
    for (int i = 1; i <= 10; i++) {
      print('$tabla * $i = ${tabla * i}');
    }

    stdout.writeln('¿Desea consultar otra tabla S/N?');
    String respuesta = stdin.readLineSync()!;
    if (respuesta != 's') {
      band = false;
    }
  }
}
