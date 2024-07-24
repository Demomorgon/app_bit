// ignore_for_file: file_names, unused_local_variable

import 'package:intl/intl.dart';

class UtilNumber {
  static String formatNumber(double number) => NumberFormat('#,##0.00')
      .format(number)
      .replaceAll('.', '-')
      .replaceAll(',', '.')
      .replaceAll('-', ',');
      static String formatNumber2(double number) => NumberFormat('#,##0')
      .format(number)
      .replaceAll('.', '-')
      .replaceAll(',', '.')
      .replaceAll('-', ',');
  static String formatNumberufv(double number) => NumberFormat('#,##0.00000')
      .format(number)
      .replaceAll('.', '-')
      .replaceAll(',', '.')
      .replaceAll('-', ',');
  static bool validarComplemento(String complemento) {
    try {
      int num = int.parse(complemento[0]);
    } catch (e) {
      return true;
    }
    // String second = complemento[1]
    //     .replaceAll('0', '')
    //     .replaceAll('1', '')
    //     .replaceAll('2', '')
    //     .replaceAll('3', '')
    //     .replaceAll('4', '')
    //     .replaceAll('5', '')
    //     .replaceAll('6', '')
    //     .replaceAll('7', '')
    //     .replaceAll('8', '')
    //     .replaceAll('9', '');
    String second = complemento[1].replaceAll(RegExp(r'^[0-9]'), '');
    if (second.isEmpty) return true;
    return false;
  }
}
