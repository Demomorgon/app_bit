import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:app_bit/UI/Componentes/Dialogo/Mensajes.dart';
import 'package:app_bit/UI/Componentes/GenericoTextTema3.dart';
import 'package:app_bit/UX/Services/LocalStore.dart';
import 'package:flutter/material.dart';

class CambioUrl extends StatelessWidget {
  CambioUrl({super.key});
  final _formKey = GlobalKey<FormState>();
  TextEditingController text =
      TextEditingController(text: LocalStore.obtenerUrlBase());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            await LocalStore.guardarUrlBase(text.text);
            mensajeCorrecto(context, 'se guarado: ${text.text}');
          }
        },
        child: Icon(Icons.save),
      ),
    );
  }

  Widget body(BuildContext context) {
    return Form(
      key: _formKey,
      child: ColumnWidgetSinFondo(children: [
        GenericoTextTema3(
            counterText: '',
            textController: text,
            titulo: 'URL',
            validacion: (value) {
              if (value == '') return 'Valor requerido';
            },
            keyboardType: TextInputType.text,
            maxLength: 200)
      ]),
    );
  }
}
