import 'dart:io';

main() {
  String continuar = 'y';
  int contador = 0;

  while (continuar == 'y') {
    contador++;
    print('Contador: $contador');

    stdout.writeln('¿Desea continuar S/N?');
    continuar = stdin.readLineSync() ?? 'n';
  }
}
