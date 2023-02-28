class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void informacion() => print('Nombre: $nombre Edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List pedidos = [];
  Cliente(String nombreActual, int edadActual)
      : super(nombreActual, edadActual);

  @override // Se indica que se sobreescribe el metodo de la clase padre.
  // De esta manera se debe de imprimir el metodo de la clase hija y no el de la clase padre.
  void informacion() {
    /**
     * Pero si se quiere imprimir el metodo de la clase padre se puede hacer de la siguiente manera:
     * super.nombreDelMetodo();
     */
    super.informacion();

    print('Cliente: $nombre ($edad)');
  }
}

void main(List<String> args) {
  final persona = new Cliente('Romario', 22);
  persona.informacion();
}
