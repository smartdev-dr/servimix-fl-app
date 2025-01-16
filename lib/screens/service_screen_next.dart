import 'package:flutter/material.dart';
import 'package:servi_mix/widgets/widgets.dart';

class ServiceScreenNext extends StatelessWidget {
  static const name = 'servicescreennext';
  const ServiceScreenNext({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: Scaffold(
        appBar: CustomAppbar(title: 'Variaciones'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [VariationsText(), PurchaseInformationCard()],
            ),
          ),
        ),
      ),
    );
  }
}
