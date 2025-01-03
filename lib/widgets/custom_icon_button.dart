import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
          child: Text(
            'Categorías',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            alignment: WrapAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Column(
                  children: [
                    Icon(
                      Icons.air,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Aires',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Column(
                  children: [
                    Icon(
                      Icons.electric_bolt_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Electricidad',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Column(
                  children: [
                    Icon(
                      Icons.cleaning_services_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Limpieza',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Column(
                  children: [
                    Icon(
                      Icons.car_repair,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Autos',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Column(
                  children: [
                    Icon(
                      Icons.air,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Aires',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Column(
                  children: [
                    Icon(
                      Icons.electric_bolt_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Electricidad',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Column(
                  children: [
                    Icon(
                      Icons.cleaning_services_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Limpieza',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Column(
                  children: [
                    Icon(
                      Icons.car_repair,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Autos',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
