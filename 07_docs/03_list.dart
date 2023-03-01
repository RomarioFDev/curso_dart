void main(List<String> args) {
  List<int> lista = [1, 2, 3, 4, 5];
  List<int>? lista2;
  List<int> lista3 = [1, 2, 3, -10];

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
}
