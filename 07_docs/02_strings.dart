void main(List<String> args) {
  String nombre = 'Romario';
  String apellido = 'Falcon';

  String nombreCompleto = '$nombre $apellido';

  print('String: $nombreCompleto');

  print('Length: ${nombreCompleto.length}');

  // Va el String.(Caracter a buscar, posicion del arreglo)
  print('Contains: ${nombreCompleto.contains('o', 1)}');

  // Busca al final del arreglo del String si existe la letra que se coloca
  print('Endswith: ${nombreCompleto.endsWith('o')}');

  /**
   * Si el length es menor que el numero asignado no se agregara el patron.
   * Pero si es menor que el numero asignado se le agregara el patron las n veces
   * que se le resta el length al  numero asignado
   * En este caso [nombreCompleto] = 14 caracteres pero el valor asignado es 20
   * asi que se le resta 20 a 14 y entonces se le adjuntara '...' 6 veces al [nombreCompleto]
   */
  print('padLeft: ${nombreCompleto.padLeft(20, '...')}');
  print('padRight: ${nombreCompleto.padRight(20, '...')}');

  // Buscar un en forma de lista la letra que queremos
  print('Operador []: ${nombreCompleto[13]}');

  // Duplica el String
  print('Operador *: ${nombreCompleto * 2}');

  // Remplaza todos los caracteres que se le indiquen por un caracter que lo remplazara
  print('ReplaceAll: ${nombreCompleto.replaceAll(RegExp('o'), '0')}');

  // Corta el String desde un punto A a un piunto B
  print('SubString: ${nombreCompleto.substring(0, 4)}...');

  // Busca la posicion del caracter que se le indica
  print('IndexOf: ${nombreCompleto.indexOf(' ')}');

  print('Split: ${nombreCompleto.split(' ')[1]}');
  print('Split: ${nombreCompleto.split(' ')}');
  for (var i in nombreCompleto.split(' ')) {
    print(i.toUpperCase());
  }

  print(
      'CapitalizarEnd: ${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}');
}
