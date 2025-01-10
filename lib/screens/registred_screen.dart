import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: const SingleChildScrollView(
        child: CustomFormfiledRegistred(),
      ),
    );
  }
}
