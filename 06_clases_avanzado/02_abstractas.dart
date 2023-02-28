/**
 * Las clases abstractas solo sirver para ser bases (cascarones) para otras clases
 * las cuales heredaran los metodos y propiedades de las clases abstractas.
 * 
 * Estas tampoco pueden ser instanciadas.
 */

abstract class Vehiculo {
  bool interruptor = false;

  void encender() {
    interruptor = true;
    print('Vehiculo encendido');
  }

  void apagar() {
    interruptor = false;
    print('Vehiculo apagado');
  }

  /**
   * se pueden crear metodos vacios para que las clases que lo extiendes las
   * utilicen dependiendo la necesidad.
   */
  bool revisarMotor();
}

class Carro extends Vehiculo {
  int kilometraje = 0;

  /**
   * Sobreescribimos el metodo y se le da una funcion, aqui solo se manda un print
   * y retorna un valor bool en este caso true;
   */
  @override
  bool revisarMotor() {
    print('Todo OK!');
    return true;
  }
}

void main(List<String> args) {
  final ford = Carro();

  ford.encender();
  ford.apagar();
  ford.revisarMotor();
}
