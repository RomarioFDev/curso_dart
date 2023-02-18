main() {
  //! Var es un tipo de dato dinamico es recomendable que se utilice cuando no esta definido que podemos recibir
  var a = 10;

  // ============================== NUMEROS ==============================

  //! int es un tipo de dato que solo acepta numeros enteros
  int b = 5;

  //! double es un tipo de dato que acepta numeros decimales
  double c = 10.5;

  //! se utiliza el ? para indicar que puede ser nulo
  int? d;

  // Si sumamos enteros con decimales el resultado sera un decimal
  double resultado = b + c;

  // print(resultado);

  // ============================== STRINGS ==============================
  String nombre = 'Romario';
  String nombre2 = "Romario";

  // El \ se utiliza para escapar caracteres osea que no se interpreten como tal
  String nombre3 = 'O\'Connor';

  // Las ''' se utiliza para crear un string multilinea
  String multilinea = '''
    Hola $nombre
    Como estas
  ''';

  // print(multilinea);

  // ============================== BOOLEANOS ==============================
  bool esActivo = true;

  // Se puede negar un booleano con el ! al principio de la variable para
  // obtener el contrario y tambien el ! al final de la variable se puede utilizar para indicar que no es nulo
  bool noActivo = !esActivo;
  // print(noActivo);

  // ============================== LISTAS ==============================
  // Las listas son arreglos que pueden contener cualquier tipo de dato
  List<String> villanos = ['Lex Luthor', 'Red Skull', 'Doom'];
  villanos.add('Thanos');
  villanos.add('Thanos');
  villanos.add('Thanos');
  villanos.add('Thanos');
  // print(villanos);

  // ============================== SETS ==============================
  // Los sets son arreglos que no pueden contener elementos repetidos
  Set<String> villanos2 = {'Lex Luthor', 'Red Skull', 'Doom'};
  // villanos2.add('Duende Verde');
  // Los sets no permiten elementos repetidos por lo que no se agregara
  // villanos2.add('Duende Verde');
  // villanos2.add('Duende Verde');
  // villanos2.add('Duende Verde');
  // print(villanos2);

  // ============================== CONVERTIR LISTA EN SET Y VOLVER A LISTAS ==============================
  // Convertir lista en set
  var villanosSet = villanos.toSet();
  // Imprimir el Set y convertir set en lista
  // print(villanosSet.toList());

  // ============================== MAPAS ==============================
  // Los mapas son diccionarios / objetos literales que tienen una clave y un valor
  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y dinero',
    'edad': 45
  };
  Map<String, dynamic> capitan = new Map();
  capitan.addAll({'nombre': 'Steve', 'poder': 'Super Soldado', 'edad': 100});

  // capitan.addAll(ironman);

  print(capitan);
}
