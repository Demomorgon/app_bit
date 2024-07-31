import 'package:app_bit/UI/Pages/CambioUrl.dart';
import 'package:app_bit/UI/Pages/CrearUsuario.dart';
import 'package:app_bit/UI/Pages/Login.dart';
import 'package:flutter/material.dart';

import '../../UX/Procesos/UtilNavegation.dart';
import '../Componentes/DrawerUiList.dart';

class LoginRegistro extends StatefulWidget {
  const LoginRegistro({super.key});

  @override
  State<LoginRegistro> createState() => _LoginRegistroState();
}

class _LoginRegistroState extends State<LoginRegistro> {
  int _currentIndex = 0;
  final List<Widget> _screens = [Login(), CrearUsuario()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      drawer: DrawerUiList(
          tema: GlobalKey(),
          sesion: GlobalKey(),
          swCerrar: false,
          listW: [
            ListTile(
              leading: Icon(
                Icons.wallet,
              ),
              title: Text('Cambio URL'),
              onTap: () {
                UtilNavegation.navegationWithFather(context, CambioUrl());
              },
            ),
            // ListTile(
            //   leading: Icon(
            //     Icons.monetization_on,
            //   ),
            //   title: Text('Tranferencia'),
            //   onTap: () {
            //     UtilNavegation.navegationWithFather(context, Transferencia());
            //   },
            // )
          ]),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Registro',
          ),
        ],
      ),
    );
  }
}
