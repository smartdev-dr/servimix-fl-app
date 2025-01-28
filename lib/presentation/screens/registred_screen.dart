import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:servi_mix/presentation/providers/providers.dart';

import 'package:servi_mix/widgets/widgets.dart';

class RegistredScreen extends StatelessWidget {
  static const name = 'registredscreen';
  const RegistredScreen({super.key});

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
                ChangeNotifierProvider(
                    create: (_) => RegisterFormProvider(),
                    child: const CustomFormfiledRegistred()),
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
