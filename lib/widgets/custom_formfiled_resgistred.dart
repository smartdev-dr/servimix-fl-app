import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../presentation/providers/register_form_provider.dart';

class CustomFormfiledRegistred extends ConsumerWidget {
  const CustomFormfiledRegistred({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerForm = ref.watch(registerFormProvider);

    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Bienvenido a',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Servimix',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF6307)),
          ),
        ),
        const SizedBox(height: 55),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Crea tu cuenta en servimix',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Correo electronico',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          forceErrorText: registerForm.isFormPosted
              ? registerForm.email.errorMessage
              : null,
          onChanged: ref.read(registerFormProvider.notifier).onEmailChange,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Contraseña',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          forceErrorText: registerForm.isFormPosted
              ? registerForm.password.errorMessage
              : null,
          onChanged: ref.read(registerFormProvider.notifier).onPasswordChange,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Confirmar contraseña',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          forceErrorText: registerForm.isFormPosted
              ? registerForm.confirmPassword.errorMessage
              : null,
          onChanged:
              ref.read(registerFormProvider.notifier).onConfirmPasswordChange,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        const SizedBox(height: 60),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Informacion de conctato',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Nombre',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          forceErrorText:
              registerForm.isFormPosted ? registerForm.name.errorMessage : null,
          onChanged: ref.read(registerFormProvider.notifier).onNameChange,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Apellido',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          forceErrorText: registerForm.isFormPosted
              ? registerForm.lastname.errorMessage
              : null,
          onChanged: ref.read(registerFormProvider.notifier).onLastNameChange,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Telefono',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          forceErrorText: registerForm.isFormPosted
              ? registerForm.phone.errorMessage
              : null,
          onChanged: ref.read(registerFormProvider.notifier).onPhoneChange,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ],
    );
  }
}
