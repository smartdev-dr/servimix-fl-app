import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomFormfaild extends StatefulWidget {
  const CustomFormfaild({
    super.key,
    required TextEditingController controlleremail,
    required TextEditingController controllerpassword,
  })  : _controlleremail = controlleremail,
        _controllerpassword = controllerpassword;

  final TextEditingController _controlleremail;
  final TextEditingController _controllerpassword;

  @override
  State<CustomFormfaild> createState() => _CustomFormfaildState();
}

class _CustomFormfaildState extends State<CustomFormfaild> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
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
        const SizedBox(height: 110),
        Image.asset(
          'assets/servimix.png',
          height: 290,
        ),
        const SizedBox(height: 10.0),
        TextField(
          controller: widget._controlleremail,
          decoration: InputDecoration(
            labelText: 'Correo electrónico',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: widget._controllerpassword,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Contraseña',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        const SizedBox(height: 25),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: const Color(0xFFFF6307),
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            onPressed: () {
              context.push('/');
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
          height: 150,
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
