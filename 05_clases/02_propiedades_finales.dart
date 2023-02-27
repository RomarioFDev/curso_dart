class Cuadrado {
  final int? lado;
  final int? area;

  // Marca un error porque no se puede asignar un valor a una propiedad final
  /* Cuadrado(int lado, int area, this.lado, this.area) {
    this.lado = lado;
    this.area = area;
  } */

  /**
   * Este es permitido pero como area no se debe modificar ya que se debe calcular
   * a partir del lado, se debe quitar de los parámetros del constructor y se debe
   * calcular en el cuerpo del constructor y asignar a la propiedad area.
  */
  // Cuadrado(this.lado, this.area);

  //Todo: Constructor con inicializadores
  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado;

  @override
  String toString() {
    return 'El area es: $area';
  }
}

void main(List<String> args) {
  final cuadrado = new Cuadrado(10);
  print(cuadrado.area);
}
