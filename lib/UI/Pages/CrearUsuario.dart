import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:app_bit/UI/Componentes/Dialogo/Mensajes.dart';
import 'package:app_bit/UI/Componentes/GenericoTextTema3.dart';
import 'package:app_bit/UI/Pages/Home.dart';
import 'package:app_bit/UX/Entidades/Bit/Usuario.dart';
import 'package:app_bit/UX/Procesos/UtilNavegation.dart';
import 'package:app_bit/UX/Services/LocalStore.dart';
import 'package:flutter/material.dart';

import '../../UX/Services/Services.dart';
import '../Componentes/LogoBCB.dart';

class CrearUsuario extends StatelessWidget {
  CrearUsuario({super.key});
  Usuario u = Usuario.fromMap({});
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
            if ((await Services.crearUsuario(u)).result == 'ok') {
              await LocalStore.guardarUsuario(u.alias.text);
              UtilNavegation.navegationReplaceFathers(context, Home());
              mensajeCorrecto(context, 'Exito');
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
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        // Text(
        //   'Registro',
        //   style: TextStyle(fontSize: 18),
        // ),
        SizedBox(
            height: size.height * 0.3,
            width: size.width,
            child: const Align(alignment: Alignment.center, child: LogoBCB())),
        Expanded(
          child: Form(
            key: _formKey,
            child: ColumnWidgetSinFondo(children: [
              const Text(
                'Registro',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              GenericoTextTema3(
                titulo: 'Nombre',
                keyboardType: TextInputType.name,
                maxLength: 50,
                counterText: '',
                textController: u.name,
                textInputAction: TextInputAction.next,
                validacion: (value) {
                  if (value == '') return 'valor requerido';
                },
              ),
              GenericoTextTema3(
                titulo: 'Alias',
                keyboardType: TextInputType.name,
                maxLength: 50,
                counterText: '',
                textController: u.alias,
                textInputAction: TextInputAction.next,
                validacion: (value) {
                  if (value == '') return 'valor requerido';
                },
              ),
              GenericoTextTema3(
                titulo: 'Documento',
                keyboardType: TextInputType.number,
                maxLength: 20,
                counterText: '',
                textController: u.document,
                textInputAction: TextInputAction.done,
                validacion: (value) {
                  if (value == '') return 'valor requerido';
                },
              )
            ]),
          ),
        ),
      ],
    );
  }
}
