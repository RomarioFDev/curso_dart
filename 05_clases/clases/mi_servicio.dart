class MiServicio {
  String url = 'https://api.romariofalcon.dev';
  String key = '1234';

  /**
   * El patron singleton es un patron de diseño que nos permite tener una sola
   * instancia de una clase en toda la aplicacion y asi poder acceder a ella
   * desde cualquier parte de la aplicacion.
   * 
   * 1.- Crear una propiedad estatica privada de la clase que va a ser el singleton y que va a ser de tipo final.
   * 2.- Crear un constructor factory que va a retornar la instancia de la clase.
   * 3.- Crear un constructor privado que va a ser el que se va a encargar de crear la instancia de la clase.
   * 
   */

  // Propiedad estatica privada que va a ser el singleton y que va a ser de tipo final.
  static final MiServicio _singleton = new MiServicio._internal();

  // Constructor factory que retorna la instancia de la clase y que solo se va a ejecutar una sola vez.
  factory MiServicio() {
    return _singleton;
  }

  // Constructor privado que genera la instancia de la clase y que solo se va a ejecutar una sola vez.
  MiServicio._internal();
}
