import 'dart:io';

/* main() {
  stdout.writeln('¿Cuál es tu eadad?');
  int edad = int.parse(stdin.readLineSync() ?? '0');

  if (edad >= 18) {
    print('Eres mayor de edad');
  } else {
    print('Eres menor de edad');
  }
} */

main() {
  bool band = true;
  while (band == true) {
    stdout.writeln('¿Cuál es tu eadad?');
    int edad = int.parse(stdin.readLineSync() ?? '0');

    if (edad >= 21) {
      print('Ciudadano');
    } else if (edad >= 18) {
      print('Mayor de edad');
    } else {
      print('Menor de edad');
    }

    stdout.writeln('¿Desea continuar S/N?');
    String respuesta = stdin.readLineSync()!;

    if (respuesta != 's') {
      band = false;
    }
  }
}
