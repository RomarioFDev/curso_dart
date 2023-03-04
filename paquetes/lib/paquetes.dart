// Package pub.dev
import 'package:http/http.dart' as http;

// Package me
import 'package:paquetes/class/reqres_resp.dart';
import 'package:paquetes/class/reqres_country.dart';

void getResponse() {
  /**
   * Otra forma de hacerlo es esta:
   * final url = Uri.parse('https://reqres.in//api/users?page=2');
  */

  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((value) {
    final respuesta = RequesResponse.fromJson(value.body);
    print('Page: ${respuesta.page}');
    print('per_page: ${respuesta.perPage}');
    print('id del 3er elemento: ${respuesta.data[2].id}');

/*     final body = convert.jsonDecode(value.body);
    print('Page: ${body['page']}');
    print('per_page: ${body['per_page']}');
    print('id del 3er elemento: ${body['data'][2]['id']}'); */
  });
}

// Funcion para los paises

void getCountry() async {
  final url = Uri.parse('https://restcountries.com/v2/alpha/col');

  await http.get(url).then((value) {
    // Contenido
    final country = Paises.fromJson(value.body);

    print('''
Debug console:
===========================
Pais: ${country.name}
Población: ${country.population}
    ''');
    print('Fronteras');
    country.borders.forEach((element) => print(element));
    print('''
languages: ${country.languages[0].nativeName}
Latitud : ${country.latlng[0]}
Longitud: ${country.latlng[1]}
Moneda: ${country.currencies[0].name}
Bandera: ${country.flag}
===========================
    ''');
  }).catchError((error) => print('Error: $error'));
}
