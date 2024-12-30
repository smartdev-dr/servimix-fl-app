import 'package:flutter/material.dart';

import 'package:servi_mix/widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  static const name = 'searchScreen';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbarSearch(),
      drawer: SideMenu(),
    );
  }
}
