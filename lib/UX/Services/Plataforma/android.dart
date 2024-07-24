import 'dart:io' as io;

class Plataforma {
  static bool plataformaWeb = false;
  static bool plataformaAndroid = true;
  static bool isWindows() {
    return io.Platform.isWindows;
  }
  static bool isIOS() {
    return io.Platform.isIOS;
  }
}
