class Rectangulo {
  int? base, altura, area;
  String? tipo;
  /**
   * Un constructor factory siempre debe de retornar una nueva instancia de rectangulo
   * o bien una instancia previamente existente.
   */
  factory Rectangulo(int base, int altura) {
    /**
     * Los construtores por nombre siempre crean una nueva instancia es asi que
     * podemos retornarlos o bien si se tiene una ya creada desde otro lugar de
     * manera se pueden utilizar para retornarla.
     */

/*     if (base == altura) {
      return Rectangulo.cuadrado(base);
    }else{
      return Rectangulo.rectangulo(base, altura);
    } */
    return Rectangulo.tipo(base, altura);
  }

/*   Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  } */

  Rectangulo.tipo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = base == altura ? 'Cuadrado' : 'Rectangulo';
  }

  @override
  String toString() {
    // return 'Es un $tipo con area: $area';
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}
        .toString();
  }
}

void main(List<String> args) {
  final rectangulo = new Rectangulo(10, 10);
  print(rectangulo);
}
