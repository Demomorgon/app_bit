// ignore_for_file: file_names

// import 'package:mvdi_bcb/UX/Services/Plataforma/android.dart'
//     if (dart.library.html) 'package:mvdi_bcb/UX/Services/Plataforma/web.dart';

import 'android.dart' if (dart.library.html) 'web.dart';

class PlataformaDir {
  static bool isweb() {
    return Plataforma.plataformaWeb;
  }

  static bool isMobil() {
    return Plataforma.plataformaAndroid;
  }

  static bool isIos() {
    return Plataforma.isIOS();
  }

  static bool isWindos() {
    return Plataforma.isWindows();
  }
}
