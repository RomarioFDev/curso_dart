void main(List<String> args) {
  final persona = {
    'nombre': 'romario',
    'apellido': 'falcon',
    'edad': 22,
  };

  final direccion = {
    'ciudad': 'Tabasco',
    'pais': 'Mexico',
  };

  print('Persona: $persona');

  print('Length: ${persona.length}');

  // Obtenemos las llaves del mapa
  print('Keys: ${persona.keys}');

  // Obtenemos los valores del mapa
  print('Keys: ${persona.values}');

  // Añade las propiedades del mapa de direccion al mapa de persona
  persona.addAll(direccion);
  print('AddAll: $persona');

  persona.remove('pais');
  print(persona);

/*   persona.removeWhere((key, value) {
    if (key != 'nombre') {
      return true;
    } else {
      return false;
    }
  }); */
  // Remueve todo dependiendo de la condicion que se le de y rerotna un true o false
  // persona.removeWhere((key, value) => (key == 'nombre') ? false : true);
  // print('revomeWhere: $persona');

  persona.forEach((key, value) {
    print('key: $key : value: $value');
  });

  /**
   * Se crea un nuevo espacion en memora para almacenar el nuevo mapa y asi poder
   * notar el cambio de los values en mayuscula.
   * Si imprimimos solo persona se imprime el espacio en memoria anterior son los cambios
   */
  final nuevaPerosna = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print('NuevaPerosna: $nuevaPerosna');
}
