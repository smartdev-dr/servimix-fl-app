import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Payment'),
          ),
          body: const Center(
            child: Text('Payment Screen'),
          ),
        ));
  }
}
