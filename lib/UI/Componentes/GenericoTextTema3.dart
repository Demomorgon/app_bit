// ignore_for_file: file_names, must_be_immutable, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../Estilos/Estilos.dart';
import '../Estilos/UpperCaseTextFormatter.dart';

class GenericoTextTema3 extends StatelessWidget {
  GenericoTextTema3(
      {super.key,
      this.height = 1.0,
      required this.titulo,
      this.enabled = true,
      required this.keyboardType,
      this.textInputAction,
      required this.maxLength,
      this.textController,
      this.mayusculas = true,
      this.onChanged,
      this.validacion,
      this.onEditingComplete,
      this.icon,
      this.obscureText = false,
      this.suffixIcon,
      this.counterText});
  String? counterText;
  Widget? suffixIcon;
  bool obscureText;
  IconData? icon;
  bool mayusculas;
  double height;
  String titulo;
  bool enabled;
  TextInputType keyboardType;
  TextInputAction? textInputAction;
  int? maxLength;
  TextEditingController? textController;
  Function(String)? onChanged;
  Function(String value)? validacion;
  Function(String value)? onEditingComplete;

  // late ProviderCompraOro providerCompraOro;
  // late TemasProvider temasProvider;
  // var text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // providerCompraOro = context.read<ProviderCompraOro>();
    // temasProvider = context.read<TemasProvider>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textController,
        enabled: enabled,
        inputFormatters: [
          if (mayusculas) UpperCaseTextFormatter(),
          if (keyboardType == TextInputType.number)
            FilteringTextInputFormatter.digitsOnly,
          FilteringTextInputFormatter.allow(
              RegExp('[A-Za-z0-9 ~!@#\$%^&*()_=+|;:/?.-a-zA-ZñÑáéíóúÁÉÍÓÚ\s]')),
        ],
        maxLength: maxLength,
        textInputAction: textInputAction ?? TextInputAction.next,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: 20,
          height: height,
          // color: Theme.of(context).colorScheme.inversePrimary,
          color: Colors.blue,
        ),
        obscureText: obscureText,
        decoration: Estilos.textfromfieldCTema3(
            titulo: titulo,
            col: Theme.of(context).colorScheme.inversePrimary,
            icon: icon,
            suffixIcon: suffixIcon,
            counterText: counterText),
        cursorColor: Theme.of(context).colorScheme.inversePrimary,
        keyboardType: keyboardType,
        onEditingComplete: onEditingComplete == null
            ? null
            : () {
                onEditingComplete!.call(textController!.text.trim());
              },
        onChanged: onChanged,
        validator: validacion == null
            ? null
            : (value) {
                if (value != null) {
                  if ((value.contains(
                              RegExp(r'select', caseSensitive: false)) ||
                          value.contains(
                              RegExp(r'delete', caseSensitive: false)) ||
                          value.contains(
                              RegExp(r'update', caseSensitive: false))) &&
                      (value.contains(
                              RegExp(r'\* from', caseSensitive: false)) ||
                          value.contains(
                              RegExp(r' from', caseSensitive: false)))) {
                    return 'Valor inválido';
                  }
                  return validacion!.call((value).trim());
                }
                return null;
              },
      ),
    );
  }
}
