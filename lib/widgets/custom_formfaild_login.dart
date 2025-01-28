import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:servi_mix/presentation/providers/login_form_provider.dart';
import 'package:servi_mix/services/auth_service_login.dart';

class CustomFormfaild extends StatelessWidget {
  const CustomFormfaild({super.key});

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Form(
      key: loginForm.formkey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          const SizedBox(height: 40),
          const Align(
            alignment: Alignment.centerLeft,
            child: Flexible(
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
          ),
          const SizedBox(height: 50),
          Image.asset(
            'assets/servimix.png',
            height: 270,
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Correo electrónico',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
            onChanged: (value) => loginForm.email = value,
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = RegExp(pattern);
              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'El correo no es correcto';
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
            onChanged: (value) => loginForm.password = value,
            validator: (value) {
              return (value != null && value.length >= 6)
                  ? null
                  : 'La contraseña debe tener 6 caracteres';
            },
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
              onPressed: () {
                if (loginForm.isValidForm() == true) {}
              },
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
                context.replace('/registredscreen');
              },
              child: const Text(
                'No tienes cuenta? Regístrate',
                style: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }
}
