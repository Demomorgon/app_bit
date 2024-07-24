import 'package:app_bit/UI/Componentes/ColumnWidgetSinFondo.dart';
import 'package:app_bit/UI/Pages/Saldo.dart';
import 'package:app_bit/UX/Entidades/Bit/token.dart';
import 'package:app_bit/UX/Procesos/UtilNavegation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<Token> list = [
    // '0000aaaaddddddddddddddddddddffffffffffffff',
    // '000eeeeeeeeeerrrrrrrrrrrrggggggggggggg',
    // '000qqqqqqqqqqwwwwwwwwwwwwww333333333333'
    Token(
        token: '0000aaaaddddddddddddddddddddffffffffffffff',
        name: 'Pedro',
        saldo: 10444.3),
    Token(
        token: '000eeeeeeeeeerrrrrrrrrrrrggggggggggggg',
        name: 'Percy',
        saldo: 500),
    Token(
        token: '000qqqqqqqqqqwwwwwwwwwwwwww333333333333',
        name: 'Oscar',
        saldo: 17000.4)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TOKEN'),
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
                    Flexible(flex: 3, child: Text('Token:' + e.token)),
                    Flexible(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {
                            UtilNavegation.navegationWithFather(
                                context, Saldo(token: e));
                          },
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
