import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<String> list = [
    '0000aaaaddddddddddddddddddddffffffffffffff',
    '000eeeeeeeeeerrrrrrrrrrrrggggggggggggg',
    '000qqqqqqqqqqwwwwwwwwwwwwww333333333333'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hola mundo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ColumnWidgetSinFondo(alignment: Alignment.topCenter, children: [
        ...list
            .map(
              (e) => Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(flex: 3, child: Text('Token:' + e)),
                    Flexible(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_sharp)),
                    )
                  ],
                ),
              ),
            )
            .toList()
      ]),
    );
  }
}
