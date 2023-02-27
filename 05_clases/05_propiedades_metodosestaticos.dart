class Herramientas {
  /**
   * Los metodos estaticos son metodos que se pueden utilizar sin necesidad de 
   * crear una instancia de la clase en la que se encuentran.
   * El static se utiliza para crear metodos y propiedades estaticas.
   */
  static const List<String> listado = [
    'Martillo',
    'Llave inglesa',
    'Desarmador'
  ];

  static void getList() => listado.forEach(print);
}

main() {
  // final herramientas = new Herramientas();
  // herramientas.listado.forEach(print);

  // Herramientas.listado.forEach(print);

  Herramientas.getList();
}
