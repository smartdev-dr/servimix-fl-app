import 'package:flutter/material.dart';

import 'package:servi_mix/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'homeScreen';
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const NavigationScreen();
  }
}

//Aqui se agregara todo el contenido del home screen maestro joshua
class HomeContentScreen extends StatelessWidget {
  const HomeContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(
          title: 'ServiMix',
          iconButton: Icons.notifications_none_outlined,
        ),
        drawer: DrawerMenu(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [SwiperCard(), CustomIconButton(), SmallCardGrid()],
            ),
          ),
        ),
      ),
    );
  }
}
