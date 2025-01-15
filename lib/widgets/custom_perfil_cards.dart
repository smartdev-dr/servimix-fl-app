import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomPerfilCards extends StatelessWidget {
  const CustomPerfilCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Primer Card
          SizedBox(
            width: 392,
            height: 110,
            child: Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/servimix.png'),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Luis Rofriguez',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'ID: 12345678',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre los cards

          // Segundo Card
          SizedBox(
            width: 396,
            height: 364,
            child: Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Usuario:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25),
                    OptionItem(
                      icon: Icons.alternate_email_outlined,
                      title: 'luis0408@gmail.com',
                      subtitle: 'Ver y editar perfil',
                    ),
                    OptionItem(
                      icon: Icons.phone_callback_rounded,
                      title: '809-686-9468',
                      subtitle: 'Establecer número de teléfono',
                    ),
                    OptionItem(
                      icon: Icons.location_on,
                      title: 'Santo Domingo Oeste',
                      subtitle: 'Establecer ubicación',
                    ),
                    OptionItem(
                      icon: Icons.lock,
                      title: '**********',
                      subtitle: 'Cambiar contraseña',
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre los cards

          // tercer Card
          SizedBox(
            width: 396,
            height: 295,
            child: Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Servicios:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25),
                    OptionItem(
                      icon: Icons.handyman_rounded,
                      title: 'Mis servicios',
                      subtitle: 'Establece tus servicios',
                    ),
                    OptionItem(
                      icon: Icons.assignment_add,
                      title: 'Disponibilidad',
                      subtitle: 'Establece tu disponibilidad',
                    ),
                    OptionItem(
                      icon: Icons.location_on,
                      title: 'Metodos de pago',
                      subtitle: 'Establece tus metodos de pago',
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre los cards

          // tercer Card
          SizedBox(
            width: 396,
            height: 295,
            child: Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ajustes:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25),
                    OptionItem(
                      icon: Icons.fingerprint_outlined,
                      title: 'Inicio de sesión',
                      subtitle: 'Inicia sesión con datos biométricos',
                    ),
                    OptionItem(
                      icon: Icons.phone_callback_rounded,
                      title: 'notificaciones',
                      subtitle: 'Recibe notificaciones ',
                    ),
                    OptionItem(
                      icon: Icons.abc_outlined,
                      title: 'Español',
                      subtitle: 'Establecer tu idioma',
                    ),
                  ],
                ),
              ),
            ),
          ),

          //boton de cerrar sesion

          const SizedBox(height: 25),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                context.replace('/loginscreen');
              },
              child: const Text(
                'Cerrar sesión',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Eliminar cuenta',
                style: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }
}

// configuracion de los items y comportamiento de los cards

class OptionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const OptionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 30,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFFFF6307),
                ),
              ),
            ],
          ),

          // Empuja el botón al final de la fila

          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_outlined))
        ],
      ),
    );
  }
}
