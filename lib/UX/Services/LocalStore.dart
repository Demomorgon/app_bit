// ignore_for_file: file_names

import 'package:app_bit/UX/Services/Constantes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStore {
  static late SharedPreferences prefs;
  static Future<void> configurePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  static guardarTutorialLogin() async =>
      await prefs.setBool(tutorialLogin, true);
  static guardarTutorialLecturaQr() async =>
      await prefs.setBool(tutorialLecturaQr, true);
  static guardarTutorialDetalleItem() async =>
      await prefs.setBool(tutorialDetalleItem, true);
  static guardarTutorialSinLectura() async =>
      await prefs.setBool(tutorialSinLectura, true);
  static guardarTutorialEliminarDB() async =>
      await prefs.setBool(tutorialEliminarDB, true);
  static guardarTema(int i) async => await prefs.setInt(tema, i);
  static guardarUsuario(String user) async =>
      await prefs.setString(usuario, user);
  static guardarToken(String tok) async => await prefs.setString(token, tok);
  static guardarModelo(String model) async =>
      await prefs.setString(modelo, model);

  static guardarMobil(String m) async => await prefs.setString(mobil, m);
  static guardarImei(String i) async => await prefs.setString(imei, i);
  static guardarMac(String m) async => await prefs.setString(mac, m);
  static guardarWifi(String w) async => await prefs.setString(wifiInfo, w);
  static guardarUrlBase(String u) async => await prefs.setString(urlBase, u);
  //

  static bool obtenerTutorialLogin() => prefs.getBool(tutorialLogin) ?? false;
  static bool obtenerTutorialLecturaQr() =>
      prefs.getBool(tutorialLecturaQr) ?? false;
  static bool obtenerTutorialDetalleItem() =>
      prefs.getBool(tutorialDetalleItem) ?? false;
  static bool obtenerTutorialSinLectura() =>
      prefs.getBool(tutorialSinLectura) ?? false;
  static bool obtenerTutorialEliminarDB() =>
      prefs.getBool(tutorialEliminarDB) ?? false;

  static String obtenerMobil() => prefs.getString(mobil) ?? '';
  static String obtenerImei() => prefs.getString(imei) ?? '';
  static String obtenerMac() => prefs.getString(mac) ?? '';
  static String obtenerWifiInfo() =>
      '${(prefs.getString(wifiInfo) ?? "") != "" ? ("/" + (prefs.getString(wifiInfo) ?? "")) : ""}';

  static int obtenerTema() => prefs.getInt(tema) ?? 1;
  static String obtenerUsuario() => prefs.getString(usuario) ?? '';
  static String obtenerToken() => prefs.getString(token) ?? '';
  static String obtenerModelo() => prefs.getString(modelo) ?? '';
  static String obtenerUrlBase() => prefs.getString(urlBase) ?? '';

  static eliminarTutorialLogin() async => await prefs.remove(tutorialLogin);
  static eliminarTutorialLecturaQr() async =>
      await prefs.remove(tutorialLecturaQr);
  static eliminarTutorialDetalleItem() async =>
      await prefs.remove(tutorialDetalleItem);
  static eliminarTutorialSinLectura() async =>
      await prefs.remove(tutorialSinLectura);
  static eliminarTutorialEliminarDB() async =>
      await prefs.remove(tutorialEliminarDB);
  static eliminarTema() async => await prefs.remove(tema);
  static eliminarUsuario() async => await prefs.remove(usuario);
  static eliminarToken() async => await prefs.remove(token);
  static eliminarModelo() async => await prefs.remove(modelo);

  static eliminarMobil() async => await prefs.remove(mobil);
  static eliminarImei() async => await prefs.remove(imei);
  static eliminarMac() async => await prefs.remove(mac);
  static eliminarWifiInfo() async => await prefs.remove(wifiInfo);
  static eliminarUrlBase() async => await prefs.remove(urlBase);
}
