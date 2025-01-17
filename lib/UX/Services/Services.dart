// ignore_for_file: file_names

import 'dart:convert';
import 'package:app_bit/UX/Entidades/Bit/TransferenciaPojo.dart';
import 'package:http/http.dart' as http;

import '../Entidades/Bit/Balance.dart';
import '../Entidades/Bit/CargarSaldo.dart';
import '../Entidades/Bit/ObtenerUsuario.dart';
import '../Entidades/Bit/Result.dart';
import '../Entidades/Bit/Usuario.dart';
import '../Entidades/RespuestaServicio.dart';
import '../Procesos/UtilText.dart';
import 'Cabecera/Cabecera.dart';
import 'Constantes.dart';
import 'LocalStore.dart';

class Services {
  static Duration duration = const Duration(seconds: 30);

  Future<RespuestaServicio> loginServicio(
      String usuario, String contrasena) async {
    try {
      var request = http.Request(
          'POST', Uri.parse('${urlBaseSai}auth/obtenerTokenMovil'));

      request.body = json.encode({
        "usuario": usuario,
        "contrasenia": UtilText.encryptSha512(contrasena),
        "codAplicacion": aplicacion,
        "usuarioInterno": usuarioInterno,
        "ldap": ldap
      });
      request.headers.addAll(cabeceraJson);

      http.StreamedResponse response = await request.send().timeout(duration);

      if (response.statusCode == 200) {
        var res = RespuestaServicio(
            body: await response.stream.bytesToString(),
            servicio: true,
            status: response.statusCode);
        print(res);
        return res;
      } else {
        return RespuestaServicio(
            body: '{}', servicio: false, status: response.statusCode);
      }
    } on Exception {
      return RespuestaServicio(body: '{}', servicio: false, status: -1);
    }
  }

  Future<RespuestaServicio> usuarioRolServicio(String login) async {
    try {
      var request = http.Request(
          'GET',
          Uri.parse(
              '${urlBaseSai}usuario/get-datos-usuario?login=$login&aplicacion=$aplicacion&usuarioInterno=$usuarioInterno&datosAdicionales=true'));
      request.headers.addAll(cabeceraTokenJson());

      http.StreamedResponse response = await request.send().timeout(duration);
      if (response.statusCode == 200) {
        var res = RespuestaServicio(
            body: await response.stream.bytesToString(),
            servicio: true,
            status: response.statusCode);
        return res;
      } else {
        return RespuestaServicio(
            body: '{}', servicio: false, status: response.statusCode);
      }
    } on Exception {
      return RespuestaServicio(body: '{}', servicio: false, status: -1);
    }
  }

  static Future<RespuestaServicio> peticionGenericaGet2(String url,
      {String? urlBase = urlBaseMvdi}) async {
    print('$urlBase$url');
    print(cabeceraTokenJson());
    try {
      // print('$urlBaseVentaDolar/$uri');
      var request = http.Request('GET', Uri.parse('$urlBase$url'));
      request.headers.addAll(cabeceraTokenJson());

      http.StreamedResponse response = await request.send().timeout(duration);
      if (response.statusCode == 200) {
        var a = RespuestaServicio(
            body: await response.stream.bytesToString(),
            servicio: true,
            status: response.statusCode);
        print(a.body);
        return a;
      } else {
        var a = RespuestaServicio(
            body: '{}', servicio: false, status: response.statusCode);
        // print(a);
        return a;
      }
    } on Exception {
      return RespuestaServicio(body: '{}', servicio: false, status: -1);
    }
  }

  static Future<RespuestaServicio> peticionGeneticaPost2(
      String url, String json,
      {String? urlBase = urlBaseMvdi}) async {
    print('$urlBase$url');
    print(cabeceraTokenJson());
    print(json);
    try {
      var request = http.Request('POST', Uri.parse('$urlBase$url'));
      request.body = json;
      request.headers.addAll(cabeceraTokenJson());

      http.StreamedResponse response = await request.send().timeout(duration);
      // print(json);
      if (response.statusCode == 200) {
        var res = RespuestaServicio(
            body: await response.stream.bytesToString(),
            servicio: true,
            status: response.statusCode);
        print(res.body);
        return res;
      } else {
        // print(await response.stream.bytesToString());
        return RespuestaServicio(
            body: '{}', servicio: false, status: response.statusCode);
      }
    } on Exception {
      return RespuestaServicio(body: '{}', servicio: false, status: -1);
    }
  }

  static Future<RespuestaServicio> peticionGeneticaExternoPost(
      {required String url,
      required String base,
      required String tipo,
      bool autorizado = true,
      required dynamic object,
      Map<String, dynamic>? parametros}) async {
    print(LocalStore.obtenerUrlBase());
    print('cabeceraTokenJsonExterno: ${cabeceraTokenJsonExterno(autorizado)}');
    // print(object);
    try {
      var request =
          http.Request('POST', Uri.parse(LocalStore.obtenerUrlBase()));
      var mensaje = json.encode({
        'pathServicio': url,
        'base': base,
        'tipoHttp': tipo,
        'parametrosGet': parametros ?? {},
        'metadata': object
      });
      print('Mensaje: $mensaje');
      request.body = mensaje;
      request.headers.addAll(cabeceraTokenJsonExterno(autorizado));

      http.StreamedResponse response = await request.send().timeout(duration);
      // print(json);
      if (response.statusCode == 200) {
        var res = RespuestaServicio(
            body: await response.stream.bytesToString(),
            servicio: true,
            status: response.statusCode);
        print('Respuesta servicio: ${res.body}');
        return res;
      } else {
        // print();
        var res = RespuestaServicio(
            body: await response.stream.bytesToString(),
            servicio: false,
            status: response.statusCode);
        print('Error servicio: $res');
        return res;
      }
    } on Exception {
      print('Exception servicion $url');
      return RespuestaServicio(body: '{}', servicio: false, status: -1);
    }
  }

  /////////////////////////////////////////////////////////////////////
  ///CAMBIAR TODO A ESTANDAR
  //
  static Future<Result> crearUsuario(Usuario u) async {
    Result r = Result.fromMap({});
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('${LocalStore.obtenerUrlBase()}usuarios'));
    request.body = json.encode(u.toMap());
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      r = Result.fromJson(await response.stream.bytesToString());
    }
    return r;
  }

  static Future<ObtenerUsuario> obtenerUsuario(String alias) async {
    ObtenerUsuario o = ObtenerUsuario.fromMap({});
    var request = http.Request(
        'GET', Uri.parse('${LocalStore.obtenerUrlBase()}usuarios/${alias}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String res = await response.stream.bytesToString();
      o = ObtenerUsuario.fromJson(res);
    } else if (response.statusCode == 500) {
      String res = await response.stream.bytesToString();
      o = ObtenerUsuario.fromJson(res);
    }
    return o;
  }

  static Future<Balance> obtenerBalance(String alias) async {
    Balance b = Balance.fromMap({});
    var request = http.Request(
        'GET', Uri.parse('${LocalStore.obtenerUrlBase()}balances/${alias}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      b = Balance.fromJson(await response.stream.bytesToString());
    }
    return b;
  }

  static Future<Result> tranferencia(TranferenciaPojo r) async {
    Result res = Result.fromMap({});
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('${LocalStore.obtenerUrlBase()}transferencias'));
    request.body = json.encode(r.toMap());
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      res = Result.fromJson(await response.stream.bytesToString());
    }
    return res;
  }

  static Future<Result> cargarSaldo(CargarSaldo c) async {
    Result r = Result.fromMap({});
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('${LocalStore.obtenerUrlBase()}saldoInicial'));
    request.body = json.encode(c.toMap());
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      r = Result.fromJson(await response.stream.bytesToString());
    }
    return r;
  }
}
