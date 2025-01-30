import 'package:flutter/material.dart';
import 'package:servi_mix/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: GestureDetector(
                onTap: FocusScope.of(context).unfocus,
                child: const CustomFormfaildLogin()),
          ),
        ),
      ),
    );
  }
}
