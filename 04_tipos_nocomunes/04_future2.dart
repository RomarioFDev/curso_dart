import 'dart:io';

void main(List<String> args) {
  File file = new File(
      Directory.current.path + '/04_tipos_nocomunes/assets/personas.txt');

/*   Future<String> f = new Future.delayed(Duration(seconds: 3), () {
    return file.readAsStringSync();
  }); */

  Future<String> f = file.readAsString();

  // String f = file.readAsStringSync();
  // print(f);

  f.then((value) => print(value));
  print('Fin del main');
}
