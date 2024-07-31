// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class TextTitleSubTitleDividerRow extends StatelessWidget {
  final String titulo;
  final String desc;
  bool dividerVisible;
  TextTitleSubTitleDividerRow({
    Key? key,
    required this.titulo,
    required this.desc,
    this.dividerVisible = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(flex: 6, child: Text(titulo)),
              Flexible(flex: 5, child: Text(desc))
            ],
          ),
        ),
        Visibility(
          visible: dividerVisible,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Divider(),
          ),
        )
      ],
    );
  }
}
