import 'package:flutter/material.dart';

import 'package:servi_mix/widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  static const name = 'searchScreen';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(title: 'Buscar'),
        drawer: const SideMenu(),
        body: SingleChildScrollView(
            child: Column(
          children: [
            const CustomDropdowns(),
            CustomSearchItem(),
            const SearchImageSwiper(),
          ],
        )));
  }
}
