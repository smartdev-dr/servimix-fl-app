import 'package:flutter/material.dart';
import 'package:servi_mix/widgets/custom_button.dart';
import 'package:servi_mix/widgets/widgets.dart';

class RegistredScreen extends StatefulWidget {
  static const name = 'registredscreen';
  const RegistredScreen({super.key});

  @override
  State<RegistredScreen> createState() => _RegistredScreenState();
}

class _RegistredScreenState extends State<RegistredScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomFormfiledRegistred(),
                const SizedBox(height: 40),
                CustomButton(text: 'Registrar', onPressed: () {}),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
