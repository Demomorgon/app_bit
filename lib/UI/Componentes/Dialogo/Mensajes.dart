// ignore_for_file: file_names

import 'package:flutter/material.dart';

void mensajeError(BuildContext context, String titulo) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.red, content: Text(titulo)));
}

void mensajeAlerta(BuildContext context, String titulo) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.yellow,
      content: Text(
        titulo,
        style: const TextStyle(color: Colors.black),
      )));
}

void mensajeCorrecto(BuildContext context, String titulo) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.green, content: Text(titulo)));
}
