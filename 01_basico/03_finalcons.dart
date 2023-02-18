main() {
  //! Var es un tipo de dato dinamico es recomendable que se utilice cuando no esta definido que podemos recibir
  const a = 10;
  //! Final es un tipo de dato que no puede ser modificado una vez que se le asigna un valor
  final b = 10;

  final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
  List<String> personasConst = const ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('Maria');
  // personasConst.add('Maria'); // Error

  // print(personasConst);

// =============================== LATE ===============================
// late es una variable que se inicializa despues de su declaracion
  late final int c;
  c = 10;
  print(c);
}
