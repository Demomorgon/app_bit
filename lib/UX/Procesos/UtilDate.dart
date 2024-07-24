// ignore_for_file: implementation_imports, file_names, depend_on_referenced_packages

import 'package:flutter/src/material/time.dart';
import 'package:intl/intl.dart';

class UtilDate {
  static final f = DateFormat('dd-MM-yyyy');
  static final f2 = DateFormat('yyyy-MM-dd');
  static final fechaHora = DateFormat('yyyy-MM-dd hh:mm:ss');
  static final f3 = DateFormat('hh:mm');

  ///dd-MM-yyyy'
  static String formato(DateTime date) => f.format(date);

  ///yyyy-MM-dd
  static String formato2(DateTime date) => f2.format(date);

  ///hh:mm
  static String formatoHoraSegundo(DateTime date) => f3.format(date);

  ///yyyy-MM-dd hh:mm:ss
  static String formatoFechaHora(DateTime date) => fechaHora.format(date);

  ///yyyy-MM-ddThh:mm:ss
  static String formatoFechaHoraT(DateTime date) =>
      fechaHora.format(date).replaceFirst(' ', 'T');

  static DateTime obtenerFecha(String fecha) => DateTime.parse(fecha);
  static DateTime obtenerFechaT(String fecha) =>
      DateTime.parse(fecha.replaceAll('T', ' '));

  static DateTime obtenerFechaFormato(String hora) =>
      DateFormat("hh:mm").parse(hora);

  ///hh:mm
  static String formatoHora(TimeOfDay newHora) =>
      f3.format(DateTime(1900, 01, 01, newHora.hour, newHora.minute));

  static bool esMenorEdad(DateTime fechaNacimiento) {
    var diferencia = DateTime.now().difference(fechaNacimiento);
    return diferencia.inDays < 6570;
    // var fe = DateTime(
    //     fechaNacimiento.year + 18, fechaNacimiento.month, fechaNacimiento.day);
    // return fe.isAfter(DateTime.now());
  }
}
