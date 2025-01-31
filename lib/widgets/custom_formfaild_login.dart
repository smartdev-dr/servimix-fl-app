import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:servi_mix/presentation/providers/auth_provider.dart';
import 'package:servi_mix/presentation/providers/login_form_provider.dart';

class CustomFormfaildLogin extends ConsumerWidget {
  const CustomFormfaildLogin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginForm = ref.watch(loginFormProvider);

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

    return Column(
      children: [
        const SizedBox(height: 40),
        const Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bienvenido a',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Text(
                'Servimix',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF6307)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        Image.asset(
          'assets/servimix.png',
          height: 270,
        ),
        const SizedBox(height: 20),
        TextFormField(
          forceErrorText:
              loginForm.isFormPosted ? loginForm.email.errorMessage : null,
          onChanged: ref.read(loginFormProvider.notifier).onEmailChange,
          decoration: InputDecoration(
            labelText: 'Correo electrónico',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          forceErrorText:
              loginForm.isFormPosted ? loginForm.password.errorMessage : null,
          onChanged: ref.read(loginFormProvider.notifier).onPasswordChange,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Contraseña',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: const Color(0xFFFF6307),
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            onPressed: loginForm.isPosting
                ? null
                : ref.read(loginFormProvider.notifier).onFormSubmit,
            child: const Text(
              'Iniciar sesión',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 85,
        ),
        TextButton(
            onPressed: () {
              context.push('/registredscreen');
            },
            child: const Text(
              'No tienes cuenta? Regístrate',
              style: TextStyle(color: Colors.black),
            )),
      ],
    );
  }
}
