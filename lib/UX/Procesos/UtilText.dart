// ignore_for_file: file_names, depend_on_referenced_packages

import 'dart:convert';

import 'package:crypto/crypto.dart';

class UtilText {
  static RegExp regExpEmail = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  static RegExp regExpPassword1 = RegExp(r'^(?=.*?[a-z]).{8,}$');

  static RegExp regExpPassword2 =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

  static RegExp regExpPassword3 = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~!@#$%^&*()_=+|;:/?.-]).{8,}$');
  static bool isEmailInvalido(String email) => !regExpEmail.hasMatch(email);

  static bool isPasswordInvalid(String password) =>
      !regExpPassword3.hasMatch(password);

  static bool isPasswordInvalid2(String password) =>
      !regExpPassword2.hasMatch(password);

  static bool isPasswordInvalid1(String password) =>
      !regExpPassword1.hasMatch(password);

  //encryt
  static String encryptSha512(String text) =>
      sha512.convert(utf8.encode(text)).toString();
  static String encryptSha1(String text) =>
      sha1.convert(utf8.encode(text)).toString();

  static String cifradoAdicional(int i) =>
      encryptSha512(DateTime.now().millisecondsSinceEpoch.toString())
          .substring(0, i);
  static String queryParametresConcat(Map<String, dynamic> map) {
    String query = '';
    try {
      map.forEach((key, value) {
        print('$key=$value');
        query = query + (query != '' ? '&' : '') + '$key=$value';
      });
      if (query != '') {
        query = '?' + query;
      }
    } catch (e) {
      print(e);
    }
    return query;
  }
}
