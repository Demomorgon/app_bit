// ignore_for_file: must_be_immutable, file_names
import 'package:app_bit/UI/Pages/Home.dart';
import 'package:app_bit/UX/Procesos/UtilNavegation.dart';
import 'package:app_bit/UX/Services/LocalStore.dart';
import 'package:flutter/material.dart';
// import 'package:mvdi_bcb/UI/Temas/temas.dart';
// import 'package:mvdi_bcb/UI/pantallas/LoginTema2.dart';
// import 'package:mvdi_bcb/UI/pantallas/SAI/RenovarContrasenia.dart';
// import 'package:mvdi_bcb/UI/pantallas/informacion/informacion.dart';
// import 'package:mvdi_bcb/UX/Procesos/UtilNavegation.dart';
// import 'package:mvdi_bcb/UX/Procesos/UtilWeb.dart';
// import 'package:mvdi_bcb/UX/Provider/ProviderLogin.dart';
// import 'package:mvdi_bcb/UX/Provider/ProviderMvdi.dart';
// import 'package:mvdi_bcb/UX/Provider/ProviderNavigationBar.dart';
// import 'package:mvdi_bcb/UX/Services/LocalStore.dart';
// import 'package:mvdi_bcb/icons/icon_redes_icons.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../UX/Services/Constantes.dart';

class DrawerUiList extends StatelessWidget {
  bool? swCerrar;
  DrawerUiList(
      {super.key,
      required this.tema,
      required this.sesion,
      required this.listW,
      this.swCerrar = true});
  GlobalKey tema;
  GlobalKey sesion;
  List<Widget> listW;
  // late AppLocalizations? len;
  // late TemasProvider temasProvider = TemasProvider(2);

  @override
  Widget build(BuildContext context) {
    // len = AppLocalizations.of(context)!;
    // var colorScheme = temasProvider.temaActual.colorScheme;
    // final appTema = Provider.of<TemasProvider>(context);
    return Drawer(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
                child: SizedBox(
              width: double.infinity,
              height: 200,
              child: CircleAvatar(
                // backgroundColor: appTema.temaActual.colorScheme.tertiary,
                child: const Image(
                    image: AssetImage('assets/imagenSplash/bcb.png')),
              ),
            )),
          ),
          ...listW,
          // Card(
          //   child: ExpansionTile(
          //     collapsedIconColor: Colors.white,
          //     iconColor: colorScheme.onPrimary,
          //     collapsedTextColor: Colors.white,
          //     textColor: colorScheme.onPrimary,
          //     //textColor: Colors.white,
          //     //iconColor: Colors.white,
          //     title: Text(
          //       len!.redesociales,
          //       //colorText: colorScheme.onPrimary,
          //     ),
          //     children: [
          //       listTitle(IconRedes.facebook_official, len!.facebook,
          //           'https://www.facebook.com/BancoCentralBO/', e46),
          //       listTitle(IconRedes.instagram, len!.instagram,
          //           'https://www.instagram.com/bancocentralbo/', e47),
          //       listTitle(IconRedes.youtube_play, len!.youTube,
          //           'https://www.youtube.com/c/BancoCentralBO', e48),
          //       listTitle(IconRedes.twitter, len!.twitter,
          //           'https://twitter.com/BancoCentralBO', e49),
          //       listTitle(Icons.tiktok, len!.tikTok,
          //           'https://www.tiktok.com/@bancocentralbo', e50),
          //       listTitle(IconRedes.linkedin_squared, len!.linkedIn,
          //           'https://www.linkedin.com/company/bancocentralbo', e51),
          //       listTitle(
          //           Icons.language, len!.web, 'https://www.bcb.gob.bo/', e52),
          //     ],
          //   ),
          // ),
          // listTitle(Icons.privacy_tip, len!.politicaPrivacidad,
          //     'https://www.bcb.gob.bo/politicas_privacidad', e53),
          // ListTile(
          //   leading: const Icon(Icons.info),
          //   title: Text(len!.informacion),
          //   onTap: () => Navigator.push(context,
          //       MaterialPageRoute(builder: (_) => const Informacion())),
          // ),
          // SafeArea(
          //     bottom: true,
          //     left: false,
          //     right: false,
          //     top: false,
          //     child: ListTile(
          //       key: sesion,
          //       leading: Icon(
          //         Icons.close,
          //         color: appTema.temaActual.colorScheme.tertiary,
          //       ),
          //       title: const Text('Cerrar sesión'),
          //       onTap: () {
          //         // context.read<ProviderLogin>().salirSesion();
          //         // context.read<ProviderLogin>().limpiar();
          //         // context.read<ProviderMvdi>().limpiar();
          //         // context.read<ProviderNavigationBar>().limpiar();
          //         // // LocalStore.prefs.remove('usuario');
          //         // LocalStore.eliminarUsuario();
          //         // // LocalStore.prefs.remove('token');
          //         // LocalStore.eliminarToken();
          //         // UtilNavegation.navegationReplaceFather(
          //         //     context, const LoginTema2(), e13, 'LoginTema2');
          //       },
          //     )),
          Visibility(
            visible: swCerrar ?? true,
            child: SafeArea(
                bottom: true,
                left: false,
                right: false,
                top: false,
                child: ListTile(
                  leading: Icon(
                    Icons.close,
                  ),
                  title: Text('Cerrar sesion'),
                  onTap: () async {
                    await LocalStore.eliminarUsuario();
                    UtilNavegation.navegationReplaceFathers(context, Home());
                  },
                )),
          )
        ],
      ),
    ));
  }

  // Widget listTitle(IconData icon, String title, String url, String codEvento) {
  //   return ListTile(
  //     leading: Icon(icon),
  //     title: Text(title),
  //     onTap: () async => await UtilWeb.openUrl(url, codEvento),
  //   );
  // }
}
