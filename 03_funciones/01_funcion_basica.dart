main() {
  String saludarRetorno = saludarConRetorno('Romario');
  print(saludarRetorno); // Función que retorna un String
  // ================================================
  saludarSinRetorno('Romario'); // Función que no retorna nada
}

// Función que retorna un String y recibe un String como parámetro
String saludarConRetorno(String nombre) {
  return 'Hola $nombre';
}

// Función que no retorna nada y recibe un String como parámetro
void saludarSinRetorno(String nombre) {
  print('Hola $nombre');
}
