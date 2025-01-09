import 'package:flutter/material.dart';
import 'package:servi_mix/screens/screens.dart';
import 'package:servi_mix/widgets/widgets.dart';

class ServiceScreen extends StatelessWidget {
  static const name = 'servicescreen';
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: Scaffold(
        appBar: CustomAppbar(
          title: 'Servicios',
          iconButton: Icons.share_rounded,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SwiperCardService(),
                ReviewText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
