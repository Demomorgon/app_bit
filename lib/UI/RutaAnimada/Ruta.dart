// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class CrearRuta {
  static Route crearRuta(Widget widget) {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            widget,
        transitionDuration: const Duration(seconds: 1),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curvedAnimation =
              CurvedAnimation(parent: animation, curve: Curves.easeInOut);

          // return SlideTransition(
          //   position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
          //       .animate(curvedAnimation),
          //   child: child,
          // );

          return ScaleTransition(
            scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
            child: child,
          );
        });
  }

  static Route crearRutaSinAnimacion(Widget widget) {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            widget,
        transitionDuration: const Duration(seconds: 0),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curvedAnimation =
              CurvedAnimation(parent: animation, curve: Curves.easeInOut);

          // return SlideTransition(
          //   position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
          //       .animate(curvedAnimation),
          //   child: child,
          // );

          return ScaleTransition(
            scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
            child: child,
          );
        });
  }
}
