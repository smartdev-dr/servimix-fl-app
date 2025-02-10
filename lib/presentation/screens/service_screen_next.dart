import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:servi_mix/widgets/widgets.dart';

class ServiceScreenNext extends StatelessWidget {
  static const name = 'servicescreennext';
  const ServiceScreenNext({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: const CustomAppbar(title: 'Variaciones'),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const VariationsText(),
                const PurchaseInformationCard(),
                CustomButton(
                  text: 'Proceder',
                  onPressed: () {
                    context.push('/paymentscreen');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
