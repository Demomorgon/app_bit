// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LogoBCB extends StatelessWidget {
  const LogoBCB({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    var medida = width > height ? height : width;
    return ClipOval(
      child: SizedBox(
        height: medida * 0.3,
        child: const Image(image: AssetImage('assets/imagenSplash/bcb.png')),
      ),
    );
  }
}
