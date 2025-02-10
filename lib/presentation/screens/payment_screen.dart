import 'package:flutter/material.dart';
import 'package:servi_mix/widgets/widgets.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          appBar: const CustomAppbar(title: 'Pago '),
          body: Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const VariationsText(),
                  const SizedBox(
                    height: 50,
                  ),
                  const PaymentInformationCard(),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    onPressed: () {},
                    text: 'Solicitar servicio',
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
