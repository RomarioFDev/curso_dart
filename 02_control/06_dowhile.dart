import 'dart:io';

main() {
  // El ciclo do while se ejecuta al menos una vez y luego se evalua la condicion
  // Si la condicion es verdadera se vuelve a ejecutar el ciclo do while
  // Si la condicion es falsa se sale del ciclo do while y continua con el resto del codigo
  String continuar = 'y';
  int contador = 0;
  do {
    contador++;
    print('Contador: $contador');

    stdout.writeln('¿Desea continuar S/N?');
    continuar = stdin.readLineSync() ?? 'n';
  } while (continuar == 's');
}
