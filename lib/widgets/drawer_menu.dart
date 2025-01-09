import 'package:flutter/material.dart';

//menu lateral faltan las opciones

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return const NavigationDrawer(children: []);
  }
}
