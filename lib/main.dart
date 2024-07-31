import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'UI/Estilos/Estilos.dart';
import 'UI/Pages/Home.dart';
import 'UX/Services/LocalStore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStore.configurePrefs();
  // int codTema = LocalStore.prefs.getInt('tema') ?? 1;
  // await LocalStore.eliminarToken();
  // await LocalStore.eliminarUsuario();
  // await LocalStore.eliminarUrlBase();
  // await LocalStore.guardarUsuario('c2');
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        drawerTheme: DrawerThemeData(backgroundColor: PLOMO_OSCURO),
        dividerColor: BEIGE,
        listTileTheme: ListTileThemeData(
            iconColor: BEIGE,
            textColor: BEIGE,
            selectedTileColor: PLOMO_OSCURO,
            tileColor: PLOMO_OSCURO),
        iconTheme: IconThemeData(color: PLOMO_OSCURO),
        appBarTheme: AppBarTheme(color: PLOMO_OSCURO, foregroundColor: BEIGE),
        scaffoldBackgroundColor: BEIGE_OSCURO,
        cardTheme: CardTheme(
          color: CAFE_OSCURO,
        ),
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: PLOMO_OSCURO.withOpacity(0.5),
          cursorColor: PLOMO_OSCURO.withOpacity(0.6),
          selectionHandleColor: PLOMO_OSCURO.withOpacity(1),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(CAFE),
        )),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: BEIGE, backgroundColor: PLOMO_OSCURO),
        bottomAppBarTheme: BottomAppBarTheme(color: BEIGE_OSCURO),
        colorScheme: ColorScheme.fromSeed(
            seedColor: PLOMO_OSCURO,
            primary: CAFE,
            primaryContainer: CAFE,
            onPrimary: CAFE_OSCURO,
            onPrimaryContainer: CAFE_OSCURO,
            inversePrimary: CAFE,
            //
            secondary: PLOMO,
            secondaryContainer: PLOMO,
            onSecondary: PLOMO_OSCURO,
            onSecondaryContainer: PLOMO_OSCURO,
            //
            tertiary: BEIGE,
            tertiaryContainer: BEIGE,
            onTertiary: BEIGE_OSCURO,
            onTertiaryContainer: BEIGE_OSCURO),
      ),
      home: Home(),
    );
  }
}
