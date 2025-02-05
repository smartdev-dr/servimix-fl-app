import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:servi_mix/presentation/providers/auth_provider.dart';
import 'package:servi_mix/widgets/widgets.dart';
import '../providers/register_form_provider.dart';

class RegistredScreen extends ConsumerWidget {
  static const name = 'registredscreen';
  const RegistredScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerForm = ref.watch(registerFormProvider);

    void showSnackbar(BuildContext context, String message) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
      ));
    }

    ref.listen(authProvider, (previous, next) {
      if (next.errorMessage.isEmpty) return;
      showSnackbar(context, next.errorMessage);
    });

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
                CustomButton(
                    text: 'Registrar',
                    onPressed: () {
                      ref
                          .read(registerFormProvider.notifier)
                          .onFormRegisterSubmit();
                    }),
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
