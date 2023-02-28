class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void informacion() => print('Nombre: $nombre Edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List pedidos = [];
  /**
   * El constructor de la clase Cliente, recibe los parametros de la clase Persona y
   * los manda a la clase Persona para que se inicialicen.
   * Con la palabra super se manda a llamar al constructor de la clase padre mandando
   * los parametros que recibe el constructor de la clase Cliente.
   */
  Cliente(String nombreActual, int edadActual)
      : super(nombreActual, edadActual);
}

void main(List<String> args) {
  final persona = new Persona('Romario', 22);
  persona.informacion();
}
