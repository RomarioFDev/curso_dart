//Argumentos posicionales y opcionales en funciones
void saludar(String mensaje, [String? nombre, int? edad]) {
  print('$mensaje $nombre $edad');
}

//Argumentos nombrados en funciones
void saludar2({String? mensaje, required String? nombre, int? edad}) {
  print('Saludar 2: $mensaje $nombre $edad');
}

main() {
  saludar('Hola buenas tarder', 'Romario', 19);
  saludar2(nombre: 'Romario');
}
