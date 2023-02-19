main() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue; // Salta la iteracion actual y continua con la siguiente
    }
    if (i == 2) {
      break; // Sale del ciclo for
    }
    print(i);
  }
}
