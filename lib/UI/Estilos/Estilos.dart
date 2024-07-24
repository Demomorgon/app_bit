// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
// import 'package:mvdi_bcb/UX/Provider/ProviderLogin.dart';

Color PLOMO_OSCURO = Color.fromRGBO(71, 81, 84, 1.0);
//  Color PLOMO_OSCURO = Colors.red;
Color PLOMO = Color.fromRGBO(91, 100, 105, 1.0);

// Color BEIGE_OSCURO = Color.fromRGBO(179, 174, 146, 1.0);
// Color BEIGE = Color.fromRGBO(207, 200, 168, 1.0);

Color BEIGE_OSCURO = Color.fromRGBO(235, 234, 227, 1);
Color BEIGE = Color.fromRGBO(231, 230, 225, 1);

Color CAFE_OSCURO = Color.fromRGBO(133, 109, 66, 1.0);
Color CAFE = Color.fromRGBO(150, 123, 70, 1.0);

class Estilos {
  // textfromfield(String titulo, Color col,
  //     {IconData? icon,
  //     bool swContrasenia = false,
  //     ProviderLogin? providerLogin}) {
  //   return InputDecoration(
  //       fillColor: col,
  //       focusColor: col,
  //       hoverColor: col,
  //       icon: icon != null
  //           ? Icon(
  //               icon,
  //               color: col,
  //             )
  //           : null,
  //       enabledBorder: OutlineInputBorder(
  //         borderSide: BorderSide(color: col, width: 1.0),
  //         borderRadius: BorderRadius.circular(5.0),
  //       ),
  //       focusedBorder: OutlineInputBorder(
  //         borderSide: BorderSide(color: col, width: 1.0),
  //         borderRadius: BorderRadius.circular(5.0),
  //       ),
  //       counterStyle: TextStyle(color: col),
  //       labelText: titulo,
  //       labelStyle: TextStyle(color: col),
  //       suffixIcon: !swContrasenia
  //           ? null
  //           : IconButton(
  //               icon: Icon(
  //                 // Based on passwordVisible state choose the icon
  //                 providerLogin!.verContrasenia
  //                     ? Icons.visibility
  //                     : Icons.visibility_off,
  //                 color: col,
  //               ),
  //               onPressed: () {
  //                 // Update the state i.e. toogle the state of passwordVisible variable
  //                 providerLogin.mostrarContrasenia();
  //               },
  //             ));
  // }

  static textfromfieldNormal(
      {required String titulo,
      required Color col,
      IconData? icon,
      Widget? suffixIcon,
      String? counterText}) {
    return InputDecoration(
        fillColor: col,
        focusColor: col,
        hoverColor: col,
        icon: icon != null
            ? Icon(
                icon,
                color: col,
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: col, width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: col, width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        counterStyle: TextStyle(color: col),
        labelText: titulo,
        labelStyle: TextStyle(color: col),
        suffixIcon: suffixIcon);
  }

  static textfromfieldCircular(
      {required String titulo,
      required Color col,
      IconData? icon,
      Widget? suffixIcon,
      String? counterText}) {
    return InputDecoration(
        counterText: counterText,
        fillColor: col,
        focusColor: col,
        hoverColor: col,
        icon: icon != null
            ? Icon(
                icon,
                color: col,
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: col, width: 2.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: col, width: 3.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: col),
        ),
        counterStyle: TextStyle(color: col),
        labelText: titulo,
        labelStyle: TextStyle(color: col),
        suffixIcon: suffixIcon);
  }

  static textfromfieldCTema3(
      {required String titulo,
      required Color col,
      IconData? icon,
      Widget? suffixIcon,
      String? counterText}) {
    return InputDecoration(
        //helperText: 'hjjhjkhkyghhjihihui',
        //contentPadding: EdgeInsets.only(top: 100, bottom: 50),
        counterText: counterText,
        fillColor: col,
        focusColor: col,
        hoverColor: col,
        icon: icon != null
            ? Icon(
                icon,
                color: col,
              )
            : null,
        // enabledBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: col, width: 2.0),
        //   // borderRadius: BorderRadius.circular(50.0),
        // ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: col, width: 3.0),
          // borderRadius: BorderRadius.circular(50.0),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: col),
        ),
        counterStyle: TextStyle(color: col),
        labelText: titulo,
        labelStyle: TextStyle(color: col),
        suffixIcon: suffixIcon);
  }
}
