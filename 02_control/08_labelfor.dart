main() {
  outerLoop: // Etiqueta
  for (int i = 0; i < 5; i++) {
    print('Valor de i = $i');

    innerLoop: // Etiqueta
    for (int j = 0; j < 5; j++) {
      print('Valor de j = $j');
      if (j == 2) {
        break outerLoop; // Sale del ciclo for y del outerLoop (etiqueta)
      }
    }
  }
}
