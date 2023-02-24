class Persona {
  //Todo: Campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Hola soy una propiedad privada';

  //Todo: Get y sets
  /**
   * Un get es un metodo que se utiliza para obtener el valor de una propiedad privada o protegida.
   * Un set es un metodo que se utiliza para asignar un valor a una propiedad privada o protegida.
   */

  // Get
/*   String get bio {
    return _bio.toUpperCase();
  } */
  String get bio => _bio.toUpperCase();

  // Set
/*   set bio(String texto) {
    _bio = texto;
  } */

  set bio(String texto) => _bio = texto;

  //Todo: Constructuros
  // Constructor por defecto de la clase

/*   Persona(String nombre, int edad){
    this.nombre = nombre;
    this.edad = edad;
  } */

// Persona(this.nombre, this.edad); // Constructor por defecto de la clase con sintaxis abreviada

  Persona(this.nombre,
      {this.edad}); // Constructor por defecto de la clase con sintaxis abreviada y parametros opcionales

  //! Constructor con nombre
  Persona.persona30(this.nombre) {
    this.edad = 30;
  }

  Persona.edadArgumento({int? edad}) {
    this.nombre = 'Jose Maria';
    this.edad = edad;
  }

  Persona.bioParamertro(String bio, String? nombre, int? edad) {
    _bio = bio;
    this.nombre = nombre;
    this.edad = edad;
  }

  //Todo: Metodos

  // Sobreescribir el metodo toString para que nos imprima los valores de las propiedades
  @override
  String toString() => '$nombre $edad $_bio';
}
