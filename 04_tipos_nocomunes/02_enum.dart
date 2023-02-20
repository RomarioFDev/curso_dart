/***
 * Las enumeraciones son un tipo especial de clase que nos permite definir un conjunto de constantes con nombre.
 * Las enumeraciones son útiles cuando queremos representar un conjunto de valores fijos.
 * Por ejemplo, los días de la semana, los meses del año, los colores del arco iris, etc.
 */

void main(List<String> args) {
  Audio volumen = Audio.alto; // Asignación de un valor a la enumeración

  switch (volumen) {
    case Audio.bajo:
      print('Nivel bajo');
      break;
    case Audio.medio:
      print('Nivel medio');
      break;
    case Audio.alto:
      print('Nivel alto');
      break;
  }
}

enum Audio { bajo, medio, alto } // Definición de la enumeración
