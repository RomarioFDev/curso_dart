main() {
  // int a = 10, b = 20;
  // int resultado = sumar(a, b);
  // int resultado2 = sumarFlecha(a, b);
  // print(resultado);

  List<int> lista = [1, 2, 3, 4, 4, 6, 7, 8, 8, 8, 9, 10, 10, 11];

  // Funcion de flecha en el metodo del where
  var nuevaLista = lista.where((element) => element >= 8);
  print(nuevaLista);

  print('=================================');

  // Retorno de la funcion filtradoLista
  var respuesta = filtroListaFlecha(lista);
  print(respuesta);
}

// Funcion normal
int sumar(int x, int y) {
  return x + y;
}

// FUncion de flecha
int sumarFlecha(int x, int y) => x + y;

// Funcion que retorna un iterable de la lista filtrada con el where y la funcion de flecha
Iterable filtroLista(List<int> lista) {
  Iterable nuevaLista = lista.where((element) => element >= 8);
  return nuevaLista;
}

// Funcion de flecha en el metodo del where y en el retorno de la funcion
Iterable filtroListaFlecha(List<int> lista) =>
    lista.where((element) => element >= 8);
