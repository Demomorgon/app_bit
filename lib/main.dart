import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'UI/Pages/Home.dart';
import 'UX/Services/LocalStore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStore.configurePrefs();
  // int codTema = LocalStore.prefs.getInt('tema') ?? 1;
  await LocalStore.eliminarToken();
  await LocalStore.eliminarUsuario();
  await LocalStore.eliminarUrlBase();
  // DartPingIOS.register();
  // await DataBaseSql.configureDB();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}
//flutter clean
//flutter pub get
//flutter build ios

//flutter build apk --release
//flutter build appbundle
//flutter build appbundle --release --obfuscate --split-debug-info=/Users/bcb/Documents/flutterOfuscate/ventaBonos/20231108
//flutter build apk --release --obfuscate --split-debug-info=/Users/bcb/Documents/flutterOfuscate/ventaBonos/20231108apk
//flutter install --release
//flutter run --release
//flutter gen-l10n

//cocoapots
//arch -x86_64 sudo gem install ffi
//cd ios
//arch -x86_64 pop install

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final appTema = Provider.of<TemasProvider>(context).temaActual;

    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // locale: const Locale('es'),
      // title: 'Venta de Bonos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      // theme: appTema,
      // home: RegistroColocacion(),
      home: Home(),
      // home: PagoQr(show: true, idColocacion: 123, monto: 123),
      // home: PagoTransferencia(show: true, monto: 1000, cuc: '101235678'),
      // builder: (BuildContext context, Widget? child) {
      //   final MediaQueryData data = MediaQuery.of(context);
      //   return MediaQuery(
      //     data: data.copyWith(textScaleFactor: 1.0),
      //     child: child!,
      //   );
      // },
      // home: Principal(),
    );
  }
}
