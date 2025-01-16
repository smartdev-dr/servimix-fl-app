import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppbar(
          title: 'ServiMix',
          iconButton: Icons.notifications_none_outlined,
        ),
        drawer: const DrawerMenu(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SwiperCard(
                  onPressed: () {
                    context.push('/servicescreen');
                  },
                ),
                const CustomIconButton(),
                const SmallCardGrid()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
