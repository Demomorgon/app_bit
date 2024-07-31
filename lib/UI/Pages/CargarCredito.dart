import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:app_bit/UI/Componentes/Dialogo/Mensajes.dart';
import 'package:app_bit/UI/Componentes/GenericoTextTema3.dart';
import 'package:app_bit/UI/Pages/Home.dart';
import 'package:app_bit/UX/Entidades/Bit/CargarSaldo.dart';
import 'package:app_bit/UX/Procesos/UtilNavegation.dart';
import 'package:app_bit/UX/Services/LocalStore.dart';
import 'package:flutter/material.dart';

import '../../UX/Services/Services.dart';

class CargarCredito extends StatelessWidget {
  CargarCredito({super.key});
  CargarSaldo s = CargarSaldo.fromMap({});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cargar credito'),
      ),
      body: body(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            s.account = LocalStore.obtenerUsuario();
            if ((await Services.cargarSaldo(s)).result == 'ok') {
              UtilNavegation.navegationReplaceFathers(context, Home());
              mensajeCorrecto(context, 'Extito');
            } else {
              mensajeAlerta(context, 'Intente mas tarde');
            }
          }
        },
        child: Icon(Icons.send),
      ),
    );
  }

  Widget body(BuildContext context) {
    return Form(
      key: _formKey,
      child: ColumnWidgetSinFondo(children: [
        GenericoTextTema3(
          titulo: 'Monto',
          keyboardType: TextInputType.number,
          maxLength: 10,
          counterText: '',
          textController: s.amount,
          validacion: (value) {
            if (value == '') return 'valor requerido';
          },
        )
      ]),
    );
  }
}
