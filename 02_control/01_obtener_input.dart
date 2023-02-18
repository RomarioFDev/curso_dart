import 'dart:io';

main() {
  stdout.writeln('¿Cuál es tu nombre?'); // Imprime en la consola
  String nombre = stdin.readLineSync()!; // Lee la entrada del usuario
  print('Hola $nombre'); // Imprime en la consola
}
