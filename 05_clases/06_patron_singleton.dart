import 'clases/mi_servicio.dart';

void main(List<String> args) {
  final spotifyServices = new MiServicio();
  spotifyServices.url = 'https://api.spotifyservice.com';

  final spotifyServices2 = new MiServicio();
  spotifyServices2.url = 'https://api.youtubeservice.comV2';

  print(spotifyServices == spotifyServices2);

  print(spotifyServices.url);
  print(spotifyServices2.url);
}
