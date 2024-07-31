import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:app_bit/UI/Componentes/Dialogo/Mensajes.dart';
import 'package:app_bit/UI/Componentes/GenericoTextTema3.dart';
import 'package:app_bit/UI/Pages/Home.dart';
import 'package:app_bit/UX/Procesos/UtilNavegation.dart';
import 'package:app_bit/UX/Services/LocalStore.dart';
import 'package:app_bit/UX/Services/Services.dart';
import 'package:flutter/material.dart';

import '../Componentes/LogoBCB.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController text = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: const AssetImage("assets/imagenSplash/bancoEdi.jpg"),
            ),
          ),
          child: body(context)),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            var res = await Services.obtenerUsuario(text.text);
            if (res.error == '-1') {
              LocalStore.guardarUsuario(text.text.trim());
              UtilNavegation.navegationReplaceFathers(context, Home());
              mensajeCorrecto(context, 'Iniciando');
            } else {
              mensajeAlerta(context, res.error);
            }
          }
        },
        child: Icon(Icons.send),
      ),
    );
  }

  body(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: ColumnWidgetSinFondo(children: [
        SizedBox(
            height: size.height * 0.3,
            width: size.width,
            child: const Align(alignment: Alignment.center, child: LogoBCB())),
        Text('Login'),
        GenericoTextTema3(
          titulo: 'Alias',
          keyboardType: TextInputType.text,
          maxLength: 50,
          textController: text,
          counterText: '',
        )
      ]),
    );
  }
}
