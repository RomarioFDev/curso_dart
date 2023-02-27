import '../persona.dart';

main() {
  final persona = new Persona('Romario', edad: 22);
  final persona2 = new Persona.persona30('Romario');
  final persona3 = new Persona.edadArgumento(edad: 45);
  final persona4 = new Persona.bioParamertro('Tabasco', 'Maria', 18);
  // persona.nombre = 'Romario';
  // persona.edad = 22;
  // persona.bio = 'Mexico';

  // Otra forma de asignar valores a las propiedades de la clase
  /* persona
    ..nombre = 'Romario'
    ..edad = 22; */
  //..bio = 'Mexico';

  // persona.bio = 'Mexico';

  print(persona);
  print(persona2);
  print(persona3);
  print(persona4);
}
