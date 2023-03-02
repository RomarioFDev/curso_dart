void main(List<String> args) {
  List<int> lista = [1, 2, 3, 4, 5];
  List<int>? lista2;
  List<int> lista3 = [3, 9, 1, -10];

  List<String> nombres = ['Juan', 'Pedro'];

  print('Length: ${lista.length}'); // Tamaño de la lista

  print('First: ${lista.first}'); // Trae el primer elemento

  print('First: ${lista.last}'); // Trae el ultimo elemento

  print('isEmpty: ${lista.isEmpty}'); // Evalua si la lista esta vacia

  print(
      'isNotEmpty: ${lista2?.isNotEmpty ?? 'Es vacia'}'); // Evalua si la lista esta vacia

  print('null: ${lista2 == null}'); // Evalua si la lista esta vacia, es mejor

  // Covierte la lista a un mapa
  print('asMap: ${lista.asMap()[1]}');

  Map listaMapa = lista.asMap();
  print('ListaMapa: ${listaMapa[3]}');

  Map nombresMapa = nombres.asMap();
  print('NombreMapas: ${nombresMapa[1]}');

  // Busca el indice de donde se encuentra el string
  print('IndexOf: ${nombres.indexOf('Juan')}');

/**
 * La funcion retorna un bool si escuentra un numero mayor a 3 pero lo que mostrara
 * en pantalla sera la posicion donde se encuentra ese numero mayor a 3
 */
/*   int mayor3 = lista.indexWhere((numero) {
    if (numero > 3) {
      return true;
    } else {
      return false;
    }
  }); */
  // Version mas corta
  int mayor3 = lista.indexWhere((element) => (element > 3) ? true : false);
  print('Mayor a 3: $mayor3');

  // Elimina un elemento del listado y retorna true si se logro y false sino se logro
  print('Remove : ${nombres.remove('Juan')}');
  print('Remove : ${nombres}');

  // Shuffle: Cambia el orden de manera aleatoria
  lista.shuffle();
  print(lista);

  // Sort: Ordena la lista de menor a mayor
  lista3.sort();
  print(lista3);

  // Reversed: Ordena la lista de mayor a menor
  print('Reversed: ${lista3.reversed.toList()}');

  /**
   * Se puede barrer los elementos de la lista pero no se modificara la lista original
   * con ele ejemplo se imprime la lista en mayusculas con el foreach pero si volvemos
   * a inmprimir solo la lista no veremos ese cambio.
   */
  nombres.forEach((element) => print(element.toUpperCase()));
  print(nombres);

  /**
   * El metodo .mpa retorna un iterable por obvias razones se vuelve a crear un a
   * una nueva lista en dado caso lo queramos conevertir.
   */
  final neuevaLista = nombres.map((nombre) => nombre.toUpperCase()).toList();
  print(neuevaLista);
}
