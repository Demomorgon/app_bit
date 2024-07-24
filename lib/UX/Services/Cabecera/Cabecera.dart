// ignore_for_file: file_names

import '../Constantes.dart';
import '../LocalStore.dart';

const Map<String, String> cabeceraJson = {'Content-Type': 'application/json'};

// Map<String, String> cabeceraTokenJson(String token) =>
//     {'Content-Type': 'application/json', 'Authorization': token};
Map<String, String> cabeceraTokenJson() => {
      'Content-Type': 'application/json',
      'Authorization': LocalStore.obtenerToken()
    };
Map<String, String> cabeceraTokenJsonExterno(bool autorizado) => {
      'Content-Type': 'application/json',
      if (autorizado) 'Authorization': LocalStore.obtenerToken(),
      'COD_APP': aplicacion,
      'API_KEY': apiKey
    };

Map<String, String> cabeceraToken(String token) => {'Authorization': token};
