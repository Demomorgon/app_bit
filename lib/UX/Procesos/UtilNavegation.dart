// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../UI/RutaAnimada/Ruta.dart';
// import 'package:mvdi_bcb/UI/RutaAnimacion/Ruta.dart';

class UtilNavegation {
  // NAVEGACION NORMAL
  static navegationWithFather(BuildContext context, Widget widget) =>
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ));
  static navegationReplaceFather(BuildContext context, Widget widget) =>
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ));
  static navegationReplaceFathers(BuildContext context, Widget widget) =>
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ),
          (a) => false);
  // CON ANIMACION
  static navegationWithFatherAnimate(BuildContext context, Widget widget) =>
      Navigator.push(context, CrearRuta.crearRuta(widget));
  static navegationReplaceFatherAnimate(BuildContext context, Widget widget) =>
      Navigator.pushReplacement(context, CrearRuta.crearRuta(widget));
  static navegationReplaceFathersAnimate(BuildContext context, Widget widget) =>
      Navigator.pushAndRemoveUntil(
          context, CrearRuta.crearRuta(widget), (a) => false);
  // SIN ANIMACION
  static navegationWithFatherNoAnimate(BuildContext context, Widget widget) =>
      Navigator.push(context, CrearRuta.crearRutaSinAnimacion(widget));
  static navegationReplaceFatherNoAnimate(
          BuildContext context, Widget widget) =>
      Navigator.pushReplacement(
          context, CrearRuta.crearRutaSinAnimacion(widget));
  static navegationReplaceFathersNoAnimate(
          BuildContext context, Widget widget) =>
      Navigator.pushAndRemoveUntil(
          context, CrearRuta.crearRutaSinAnimacion(widget), (a) => false);
}
