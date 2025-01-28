import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:servi_mix/widgets/widgets.dart';

class ServiceScreen extends StatelessWidget {
  static const name = 'servicescreen';
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: const CustomAppbar(
          title: 'Servicios',
          iconButton: Icons.share_rounded,
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SwiperCard(onPressed: () {}),
                const ReviewText(),
                const SizedBox(
                  height: 90,
                ),
                CustomButton(
                    text: 'Solicitar servicio',
                    onPressed: () {
                      context.push('/servicescreennext');
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
