import 'dart:io';

//Funcion para escribir en consola
void escribir(String texto) => stdout.writeln('$texto');
//Funcion para leer en consola
String? leer() => stdin.readLineSync()!;

void obtenerDeducciones(int i) {
  escribir('¿Cúal es su nombre?');
  String nombre = leer() ?? '';

  escribir('¿Qué edad tienes?');
  String edad = leer() ?? '';

  escribir('¿En qué país naciste?');
  String pais = leer() ?? '';

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  escribir('Usuario $i sin deducciones');
  escribir('$usuario');

  double salario = i == 1 ? 1500 : 1800;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  escribir('$usuario');
}

void main(List<String> args) {
  for (var i = 1; i <= 2; i++) {
    obtenerDeducciones(i);
  }
}
