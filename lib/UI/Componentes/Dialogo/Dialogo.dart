// ignore_for_file: unused_local_variable, file_names, use_build_context_synchronously, empty_catches, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:mvdi_bcb/UI/Componentes/TextButtonWidget.dart';
// import 'package:mvdi_bcb/UX/Provider/ProviderMvdi.dart';
// import 'package:mvdi_bcb/UX/Provider/ProviderNavigationBar.dart';
import 'package:provider/provider.dart';
// import 'package:mvdi_bcb/UI/Estilos/cargando.dart';
// import 'package:mvdi_bcb/UI/Temas/temas.dart';
// import 'package:mvdi_bcb/UX/Entidades/RespuestaServicio.dart';
// import 'package:mvdi_bcb/UX/Provider/ProviderLogin.dart';
// import 'package:mvdi_bcb/UX/Services/LocalStore.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// import '../../UX/Procesos/Eventos.dart';
// import '../../UX/Services/Constantes.dart';

class DialogoWidget {
  // static Future<void> showMyDialogGeneral(
  //     {required BuildContext context,
  //     required Widget child,
  //     Widget? childBooton,
  //     required String title,
  //     required bool visibleCerrar}) async {
  //   var providerThema = context.read<TemasProvider>();
  //   var color = providerThema.temaOcuro
  //       ? providerThema.temaActual.colorScheme.primary
  //       : providerThema.temaActual.colorScheme.primary;
  //   return showDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         contentPadding: const EdgeInsets.all(0),
  //         elevation: 0,
  //         title: Text(
  //           title,
  //           style: TextStyle(
  //               color: providerThema.temaActual.colorScheme.secondary),
  //         ),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: child,
  //             ),
  //           ],
  //         ),
  //         actions: [
  //           Visibility(
  //             visible: visibleCerrar,
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 childBooton ?? const SizedBox(),
  //                 TextButtonWidget(
  //                   titulo: 'Cerrar',
  //                   function: () => Navigator.pop(context),
  //                 )
  //               ],
  //             ),
  //           )
  //         ],
  //       );
  //     },
  //   );
  // }

  // static void showDialogoTitleSubTitle(
  //     BuildContext context, String title, String subTitle) {
  //   var len = AppLocalizations.of(context);
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         contentPadding: const EdgeInsets.all(0),
  //         elevation: 0,
  //         title: Text(title),
  //         actions: [
  //           Center(child: Text(subTitle)),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               TextButtonWidget(
  //                   titulo: len!.cerrar, function: () => Navigator.pop(context))
  //             ],
  //           )
  //         ],
  //       );
  //     },
  //   );
  // }

  // static void salir(BuildContext context) {
  //   var providerThema = context.read<TemasProvider>();
  //   var len = AppLocalizations.of(context);
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         backgroundColor: providerThema.temaActual.colorScheme.tertiary,
  //         contentPadding: const EdgeInsets.all(0),
  //         elevation: 0,
  //         title: Text(len!.seguroSalir),
  //         actions: [
  //           // Center(child: Text(subTitle)),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               ElevatedButton(
  //                   style: ButtonStyle(
  //                     backgroundColor: MaterialStateProperty.all(
  //                         providerThema.temaActual.colorScheme.secondary),
  //                   ),
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                   },
  //                   child: Text(len.cancelar,
  //                       style: TextStyle(
  //                           color: providerThema
  //                               .temaActual.colorScheme.tertiary))),
  //               const SizedBox(
  //                 width: 8,
  //               ),
  //               ElevatedButton(
  //                   style: ButtonStyle(
  //                     backgroundColor: MaterialStateProperty.all(
  //                         providerThema.temaActual.colorScheme.secondary),
  //                   ),
  //                   onPressed: () {
  //                     context.read<ProviderLogin>().salirSesion();
  //                     context.read<ProviderLogin>().limpiar();
  //                     context.read<ProviderMvdi>().limpiar();
  //                     context.read<ProviderNavigationBar>().limpiar();
  //                     LocalStore.eliminarUsuario();
  //                     LocalStore.eliminarToken();
  //                     exit(0);
  //                   },
  //                   child: Text(len.aceptar,
  //                       style: TextStyle(
  //                           color:
  //                               providerThema.temaActual.colorScheme.tertiary)))
  //             ],
  //           )
  //         ],
  //       );
  //     },
  //   );
  // }

  // static Future<RespuestaServicio> esperarRes(
  //     BuildContext context, Future<RespuestaServicio> Function() param1) async {
  //   var len = AppLocalizations.of(context);
  //   showDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         contentPadding: const EdgeInsets.all(0),
  //         elevation: 0,
  //         scrollable: true,
  //         title: Text(len!.procesando),
  //         content: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(len.procesando),
  //                 const SizedBox(
  //                   width: 10,
  //                 ),
  //                 Cargando(),
  //               ],
  //             )),
  //       );
  //     },
  //   );
  //   RespuestaServicio r =
  //       RespuestaServicio(body: '{}', servicio: true, status: -1);
  //   try {
  //     r = await param1.call();
  //   } catch (e) {
  //     Eventos.enviarError(eel9, 'error en esperar respuesta dynamica: $e');
  //   }
  //   Navigator.pop(context);
  //   return r;
  // }

  static Future<bool> confirmarAccion(BuildContext context, String title,
      String aceptar, String cancelar, Future<bool> Function() param0) async {
    // var providerThema = context.read<TemasProvider>();
    // var len = AppLocalizations.of(context);
    bool res = false;
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // backgroundColor: providerThema.temaActual.colorScheme.tertiary,
          contentPadding: const EdgeInsets.all(0),
          elevation: 0,
          title: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          actions: [
            // Center(child: Text(subTitle)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    // style: ButtonStyle(
                    //     // backgroundColor: MaterialStateProperty.all(
                    //     //     providerThema.temaActual.colorScheme.secondary),
                    //     ),
                    onPressed: () {
                      res = false;
                      Navigator.pop(context);
                    },
                    child:
                        Text(cancelar, style: TextStyle(color: Colors.white))),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                    // style: ButtonStyle(
                    //     // backgroundColor: MaterialStateProperty.all(
                    //     //     providerThema.temaActual.colorScheme.secondary),
                    //     ),
                    onPressed: () async {
                      // res = true;
                      res = await param0.call();
                      Navigator.pop(context);
                    },
                    child: Text(aceptar, style: TextStyle(color: Colors.white)))
              ],
            )
          ],
        );
      },
    );
    return res;
  }

  // static Future<void> esperarFuture(
  //     BuildContext context, Future<void> Function() param1) async {
  //   var len = AppLocalizations.of(context);
  //   showDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         contentPadding: const EdgeInsets.all(0),
  //         elevation: 0,
  //         scrollable: true,
  //         title: Text(len!.procesando),
  //         content: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(len.procesando),
  //                 const SizedBox(
  //                   width: 10,
  //                 ),
  //                 Cargando(),
  //               ],
  //             )),
  //       );
  //     },
  //   );
  //   try {
  //     await param1.call();
  //   } catch (e) {
  //     Eventos.enviarError(eel10, 'error en esperar accion futura: $e');
  //   }
  //   Navigator.pop(context);
  //   // return r;
  // }

  // static Future<dynamic> esperarFutureDynamic(
  //     BuildContext context, Future<dynamic> Function() param1) async {
  //   var len = AppLocalizations.of(context);
  //   showDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         contentPadding: const EdgeInsets.all(0),
  //         elevation: 0,
  //         scrollable: true,
  //         title: Text(len!.procesando),
  //         content: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(len.procesando),
  //                 const SizedBox(
  //                   width: 10,
  //                 ),
  //                 Cargando(),
  //               ],
  //             )),
  //       );
  //     },
  //   );
  //   var r;
  //   try {
  //     r = await param1.call();
  //   } catch (e) {
  //     Eventos.enviarError(eel11, 'error en esperar respuesta dynamica: $e');
  //   }
  //   Navigator.pop(context);
  //   return r;
  // }

  // static void showDialogoDetalle(BuildContext context, DetalleColocacion item) {
  //   var len = AppLocalizations.of(context);
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         contentPadding: const EdgeInsets.all(0),
  //         elevation: 0,
  //         content: DetalleColocaciones(
  //           detalle: item,show: false
  //         ),
  //       );
  //     },
  //   );
  // }
}
