// // ignore_for_file: must_be_immutable

// import 'dart:developer';

// import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
// import 'package:app_bit/UI/Componentes/cargando.dart';
// import 'package:app_bit/UI/Pages/Transferencia.dart';
// import 'package:app_bit/UX/Entidades/Bit/Cuenta.dart';
// import 'package:app_bit/UX/Procesos/UtilNavegation.dart';
// import 'package:app_bit/UX/Procesos/UtilNumber.dart';
// import 'package:flutter/material.dart';

// import '../../UX/Entidades/Bit/SaldoPojo.dart';
// import '../../UX/Services/Services.dart';

// class Saldo extends StatelessWidget {
//   final String token;
//   Saldo({super.key, required this.token});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cuenta'),
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: body(context),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           UtilNavegation.navegationWithFather(
//               context,
//               Transferencia(
//                 token: token,
//               ));
//         },
//         child: Icon(Icons.wallet),
//       ),
//     );
//   }

//   Widget body(BuildContext context) {
//     return FutureBuilder<SaldoPojo>(
//       future: Services().obtenerSaldo(Cuenta(cuenta: token)),
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) {
//           return Cargando();
//         }
//         return ColumnWidgetSinFondo(alignment: Alignment.topCenter, children: [
//           Text(
//             'Saldo: ' +
//                 UtilNumber.formatNumber(double.parse(snapshot.data!.saldo)),
//             style: TextStyle(fontSize: 20),
//           ),
//         ]);
//       },
//     );
//   }
// }
