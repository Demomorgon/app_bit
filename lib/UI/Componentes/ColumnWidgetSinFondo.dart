// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class ColumnWidgetSinFondo extends StatelessWidget {
  ColumnWidgetSinFondo(
      {super.key, required this.children, this.size, this.alignment});
  final List<Widget> children;
  double? size;
  AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    var dimesion = MediaQuery.of(context).size;
    return Align(
      alignment: alignment ?? Alignment.center,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SizedBox(
          width: size ?? (dimesion.width > 800 ? 600 : dimesion.width * 0.9),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
