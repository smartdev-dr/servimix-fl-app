import 'package:flutter/material.dart';

import 'package:servi_mix/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: Scaffold(
        appBar: CustomAppbar(title: 'Perfil', iconButton: null),
        drawer: DrawerMenu(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomPerfilCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
