String capitalizar(texto) {
  return texto.toUpperCase();
}

Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  // Todos los objetos en Dart son pasados por referencia (salvo los primitivos)
  // Todos, como son los mapas, listas y objetos
  mapa = {...mapa}; // rompe la referencia
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';
  return mapa;
}

main() {
  String nombre = 'Juan';
  String nombre2 = capitalizar(nombre);
  // print(nombre);
  // print(nombre2);

  Map<String, String> persona = {'nombre': 'Juan Perez'};
  Map<String, String> persona2 = capitalizarMapa(persona);

  print(persona);
  print(persona2);
}
