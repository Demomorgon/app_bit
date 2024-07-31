import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:app_bit/UI/Componentes/TextTitleSubTitleDividerRow.dart';
import 'package:app_bit/UI/Componentes/cargando.dart';
import 'package:app_bit/UI/Pages/CargarCredito.dart';
import 'package:app_bit/UI/Pages/Home.dart';
import 'package:app_bit/UX/Procesos/UtilNavegation.dart';
import 'package:app_bit/UX/Services/LocalStore.dart';
import 'package:app_bit/UX/Services/Services.dart';
import 'package:flutter/material.dart';

import '../../UX/Entidades/Bit/Balance.dart';
import '../../UX/Entidades/Bit/ObtenerUsuario.dart';
import '../Componentes/DrawerUiList.dart';
import 'Transferencia.dart';

class DatosUsuario extends StatelessWidget {
  const DatosUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      drawer: DrawerUiList(tema: GlobalKey(), sesion: GlobalKey(), listW: [
        ListTile(
          leading: Icon(
            Icons.wallet,
          ),
          title: Text('Cargar saldo'),
          onTap: () {
            UtilNavegation.navegationWithFather(context, CargarCredito());
          },
        ),
        ListTile(
          leading: Icon(
            Icons.monetization_on,
          ),
          title: Text('Tranferencia'),
          onTap: () {
            UtilNavegation.navegationWithFather(context, Transferencia());
          },
        )
      ]),
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
        onPressed: () {
          UtilNavegation.navegationWithFather(context, Home());
        },
        child: Icon(Icons.refresh),
      ),
    );
  }

  Widget body(BuildContext context) {
    return FutureBuilder<ObtenerUsuario>(
      future: Services.obtenerUsuario(LocalStore.obtenerUsuario() ?? ''),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Cargando();
        }
        var ou = snapshot.data;
        return ColumnWidgetSinFondo(alignment: Alignment.topCenter, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey,
              child: Column(
                children: [
                  TextTitleSubTitleDividerRow(titulo: 'Nombre', desc: ou!.name),
                  TextTitleSubTitleDividerRow(titulo: 'Alias', desc: ou.aliasx),
                  TextTitleSubTitleDividerRow(
                      titulo: 'Nro. Documento', desc: ou.document)
                ],
              ),
            ),
          ),
          //saldo
          FutureBuilder<Balance>(
            future: Services.obtenerBalance(LocalStore.obtenerUsuario() ?? ''),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Cargando();
              }
              var b = snapshot.data;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'saldo: ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(b!.balance + ' EBs', style: TextStyle(fontSize: 20))
                ],
              );
            },
          )
        ]);
      },
    );
  }
}
