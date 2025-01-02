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
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'ServiMix',
      ),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SwiperCard(),
            CustomIconButton(),
            SmallCardGrid(),
          ],
        ),
      ),
    );
  }
}
