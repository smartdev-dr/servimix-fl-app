import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../presentation/providers/register_form_provider.dart';

class CustomFormfiledRegistred extends StatelessWidget {
  const CustomFormfiledRegistred({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<RegisterFormProvider>(context);

    return Form(
      key: loginForm.formkey,
      child: Column(
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
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
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
            obscureText: true,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
            onChanged: (value) => loginForm.password = value,
            validator: (value) {
              return (value != null && value.length >= 6)
                  ? null
                  : 'La contraseña debe tener 6 caracteres';
            },
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
            obscureText: true,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
            onChanged: (value) => loginForm.confirmpassword = value,
            validator: (value) {
              return (value != null && value.length >= 6)
                  ? null
                  : 'La contraseña debe tener 6 caracteres';
            },
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
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
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
          TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
