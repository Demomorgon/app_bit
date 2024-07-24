// ignore_for_file: must_be_immutable

import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:app_bit/UI/Pages/Transferencia.dart';
import 'package:app_bit/UX/Entidades/Bit/DetalleBit.dart';
import 'package:app_bit/UX/Entidades/Bit/token.dart';
import 'package:app_bit/UX/Procesos/UtilNavegation.dart';
import 'package:app_bit/UX/Procesos/UtilNumber.dart';
import 'package:flutter/material.dart';

class Saldo extends StatelessWidget {
  final Token token;
  Saldo({super.key, required this.token});
  List<DetalleBit> list = [
    DetalleBit(codigo: '0032003', cantidad: 3, monto: 30),
    DetalleBit(codigo: '0002421', cantidad: 4, monto: 40)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(token.name),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: body(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          UtilNavegation.navegationWithFather(context, Transferencia());
        },
        child: Icon(Icons.wallet),
      ),
    );
  }

  Widget body(BuildContext context) {
    return ColumnWidgetSinFondo(alignment: Alignment.topCenter, children: [
      Text(
        'Saldo: ' + UtilNumber.formatNumber(token.saldo),
        style: TextStyle(fontSize: 20),
      ),
      ...list.map(
        (e) => Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(flex: 3, child: Text(e.codigo)),
                Flexible(flex: 2, child: Text(UtilNumber.formatNumber(e.monto)))
              ],
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('Total: '),
              Text(UtilNumber.formatNumber(list.fold<double>(
                0.0,
                (previousValue, element) => previousValue + element.monto,
              ))),
            ],
          ),
        ),
      )
    ]);
  }
}
