import 'dart:collection';

void main(List<String> args) {
  // Los queues son colas de datos que se pueden recorrer con un iterador
  // y que se pueden recorrer con un for in (for each) como un iterable normal

  // Creamos un queue
  Queue<int> cola = new Queue();
  // Agregamos elementos
  cola.addAll([1, 2, 10, 4, 5]);
  // Igualar la cola a un iterable
  Iterator i = cola.iterator;
  // Recorremos la cola con un iterador y un while
  while (i.moveNext()) {
    print(i.current);
  }
}
