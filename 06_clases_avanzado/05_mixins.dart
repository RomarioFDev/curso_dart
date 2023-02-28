/**
 * Los mixins son una forma de reutilizar código en Dart.
 * Los mixins son clases que contienen métodos que pueden ser reutilizados en otras clases.
 * Los mixins son similares a las clases abstractas, pero no pueden contener constructores.
 * Los mixins no pueden ser instanciados igual que las clases abstractas.
 */

mixin Logger {
  void imprimir(String texto) {
    final hora = DateTime.now();
    print('Hora: $hora ::::: $texto');
  }
}

/**
 * Para heredar propiedades y metodos de un mixin se utiliza with y el nombre del mixin.
 * Para extender mas de un mixin se utiliza la coma (,) y el nombre del mixin.
 */
abstract class Astro with Logger {
  String? nombre;
  Astro() {
    imprimir('--Init del Astro--');
  }
  Existo() {
    imprimir('--Soy un ser celestial y existo--');
  }
}

class Asteroide extends Astro {
  String? nombre;
  Asteroide(this.nombre) {
    imprimir('Soy $nombre');
  }
}

void main(List<String> args) {
  Asteroide('Romario');
}
