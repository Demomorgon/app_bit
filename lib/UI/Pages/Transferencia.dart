import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:app_bit/UI/Componentes/GenericoTextTema3.dart';
import 'package:flutter/material.dart';

import '../Componentes/Dialogo/Dialogo.dart';

class Transferencia extends StatelessWidget {
  Transferencia({super.key});

  final _formKey = GlobalKey<FormState>();

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
              print('se confirmo');
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
          maxLength: 50,
          counterText: '',
          validacion: (value) {
            if (value == '') return 'Valor requerido';
          },
        ),
        GenericoTextTema3(
          titulo: 'Monto',
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
