class Location {
  final double lat;
  final double log;

  const Location(this.lat, this.log);
}

void main(List<String> args) {
  final sanFrancisco = new Location(18.2323, 39.9000);
  final sanFrancisco2 = new Location(18.2323, 39.9001);
  final sanFrancisco3 = new Location(18.2323, 39.9001);

  // print(sanFrancisco == sanFrancisco2); // Falso
  // print(sanFrancisco2 == sanFrancisco3); // Falso

  const sanFrancisco4 = const Location(18.2323, 39.9000);
  const sanFrancisco5 = const Location(18.2323, 39.9001);
  const sanFrancisco6 = const Location(18.2323, 39.9001);
  /**
   * Los objetos constantes siempre son iguales a si mismos y a otros objetos constantes
   * porque siempre apuntan a la misma dirección de memoria.
   */
  print(sanFrancisco4 == sanFrancisco5); // Falso
  print(sanFrancisco5 == sanFrancisco6); // True
}
