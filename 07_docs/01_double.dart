void main(List<String> args) {
  const double numero = 3.1416;
  const double numero2 = 3.4;
  double infinito = double.infinity;
  // print('Firma: ${numero.sign} :: $numero');

  print('isFinite: ${numero.isFinite} :: $numero');
  print('isFinite: ${infinito.isFinite} :: $infinito');

  print('ABS: ${numero.abs()} :: $numero');

  // Si el numero es infinito deberia mandar un error
  print('ceil: ${numero.ceil()} :: $infinito');

  print('ceilToDouble: ${numero.ceilToDouble()} :: $numero');

  print('round: ${numero2.round()} :: $numero2'); // Redondea a un numero entero

  print(
      'roundToDouble: ${numero2.roundToDouble()} :: $numero2'); // Redondea y deja como numero double

  print('clamp: ${numero.clamp(1, 4)} :: $numero');
}
