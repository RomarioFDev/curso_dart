class Vehiculo {
  bool interruptor = false;

  void encender() {
    interruptor = true;
    print('Vehiculo encendido');
  }

  void apagar() {
    interruptor = false;
    print('Vehiculo apagado');
  }
}

/**
 * La palabra resevada extends sirve para que una clase creada o por crear herede
 * los metodos y propiedades de otra clase.
 */

class Carro extends Vehiculo {
  int kilometraje = 0;
}

void main(List<String> args) {
  final ford = Carro();

  ford.encender();
  ford.apagar();
}
