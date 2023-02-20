main() {
  obtenerUsuario('100', (Map persona) {
    print(persona);
  } /* Pasando un mapa al callback */);
}

// Funcion que recibe un callback como parametro y lo ejecuta dentro de la funcion
void obtenerUsuario(String id, Function callback /* Funcion callback */) {
  Map<String, dynamic> usuario = {
    'id': id,
    'nombre': 'Romario',
  };

  callback(usuario);
}
