import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:app_bit/UI/Componentes/Dialogo/Mensajes.dart';
import 'package:app_bit/UI/Componentes/GenericoTextTema3.dart';
import 'package:app_bit/UI/Pages/Home.dart';
import 'package:app_bit/UX/Entidades/Bit/TransferenciaPojo.dart';
import 'package:app_bit/UX/Procesos/UtilNavegation.dart';
import 'package:app_bit/UX/Services/LocalStore.dart';
import 'package:app_bit/UX/Services/Services.dart';
import 'package:flutter/material.dart';

import '../Componentes/Dialogo/Dialogo.dart';

class Transferencia extends StatelessWidget {
  Transferencia({
    super.key,
  });

  final _formKey = GlobalKey<FormState>();

  TranferenciaPojo t = TranferenciaPojo.fromMap({});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencia'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: body(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            if (await DialogoWidget.confirmarAccion(
              context,
              'Confirmar accion',
              'Aceptar',
              'Cancelar',
              () async => true,
            )) {
              t.from = LocalStore.obtenerUsuario();
              if ((await Services.tranferencia(t)).result == 'ok') {
                UtilNavegation.navegationReplaceFathers(context, Home());
                mensajeCorrecto(context, 'Exito en transferencia');
              } else {
                mensajeError(context, 'Error en transferencia');
              }
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
      child: ColumnWidgetSinFondo(alignment: Alignment.topCenter, children: [
        GenericoTextTema3(
          titulo: 'Alias',
          keyboardType: TextInputType.name,
          textController: t.to,
          maxLength: 50,
          counterText: '',
          validacion: (value) {
            if (value == '') return 'Valor requerido';
          },
        ),
        GenericoTextTema3(
          titulo: 'Monto',
          textController: t.amount,
          keyboardType: TextInputType.number,
          maxLength: 5,
          validacion: (value) {
            if (value == '') return 'Valor requerido';
            if (value == '0') return 'Deve ser mayor que 0';
          },
        )
      ]),
    );
  }
}
