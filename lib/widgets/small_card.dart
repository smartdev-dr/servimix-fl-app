import 'package:flutter/material.dart';

class SmallCardGrid extends StatelessWidget {
  const SmallCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Mejores Calificados',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: const [
                SmallImageCard(
                  imageUrl:
                      'https://mejorconsalud.as.com/wp-content/uploads/2023/05/mujer-tareas-domesticas.jpg',
                  title: 'Plomería',
                  description: 'Servicios de plomería',
                ),
                SmallImageCard(
                  imageUrl:
                      'https://mejorconsalud.as.com/wp-content/uploads/2023/05/mujer-tareas-domesticas.jpg',
                  title: 'Electricidad',
                  description: 'Instalaciones',
                ),
                SmallImageCard(
                  imageUrl:
                      'https://mejorconsalud.as.com/wp-content/uploads/2023/05/mujer-tareas-domesticas.jpg',
                  title: 'Limpieza',
                  description: 'limpieza profesional',
                ),
                SmallImageCard(
                  imageUrl:
                      'https://mejorconsalud.as.com/wp-content/uploads/2023/05/mujer-tareas-domesticas.jpg',
                  title: 'Pintura',
                  description: 'Pintamos tu espacio',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SmallImageCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const SmallImageCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 160,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),

            // Gradiente para que el texto se vea mejor
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
            ),

            // Texto
            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
