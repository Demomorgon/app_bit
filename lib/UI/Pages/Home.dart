import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:app_bit/UI/Componentes/cargando.dart';
import 'package:app_bit/UI/Pages/CrearUsuario.dart';
import 'package:app_bit/UI/Pages/DatosUsuario.dart';
import 'package:app_bit/UI/Pages/LoginRegistro.dart';
import 'package:app_bit/UI/Pages/Saldo.dart';
import 'package:app_bit/UX/Procesos/UtilNavegation.dart';
import 'package:app_bit/UX/Services/LocalStore.dart';
import 'package:app_bit/UX/Services/Services.dart';
import 'package:flutter/material.dart';

import '../../UX/Entidades/Bit/Cuentas.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(''),
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      // ),
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    var a = LocalStore.obtenerUsuario();
    return LocalStore.obtenerUsuario() != '' ? DatosUsuario() : LoginRegistro();
  }
}
