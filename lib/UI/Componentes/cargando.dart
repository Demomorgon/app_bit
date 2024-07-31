// import 'package:flutter/cupertino.dart';
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../Estilos/Estilos.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Cargando extends StatelessWidget {
  Cargando({super.key});
  Estilos estilos = Estilos();
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircularProgressIndicator(
            color: BEIGE, backgroundColor: PLOMO_OSCURO),
      ),
    );
  }
}
