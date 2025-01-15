import 'package:flutter/material.dart';

import 'package:servi_mix/widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  static const name = 'searchScreen';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: CustomAppbar(
              title: 'Buscar', iconButton: Icons.notifications_none_outlined),
          drawer: DrawerMenu(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
                child: Column(
              children: [
                CustomDropdowns(),
                CustomSearchItem(),
                SearchImageSwiper(),
              ],
            )),
          )),
    );
  }
}
