import 'package:flutter/material.dart';

class SearchImageSwiper extends StatelessWidget {
  const SearchImageSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: GridView.count(
              crossAxisCount: 2, // Número de columnas
              crossAxisSpacing: 10, // Espacio horizontal entre tarjetas
              mainAxisSpacing: 10, // Espacio vertical entre tarjetas
              shrinkWrap: true, // Para ajustar el tamaño al contenido
              physics:
                  NeverScrollableScrollPhysics(), // Deshabilitamos el scroll
              children: const [
                CardSwiperSearch(
                  imageUrl:
                      'https://mejorconsalud.as.com/wp-content/uploads/2023/05/mujer-tareas-domesticas.jpg',
                  title: 'Plomería',
                  description: 'Servicios de plomería',
                ),
                CardSwiperSearch(
                  imageUrl:
                      'https://mejorconsalud.as.com/wp-content/uploads/2023/05/mujer-tareas-domesticas.jpg',
                  title: 'Electricidad',
                  description: 'Instalaciones',
                ),
                CardSwiperSearch(
                  imageUrl:
                      'https://mejorconsalud.as.com/wp-content/uploads/2023/05/mujer-tareas-domesticas.jpg',
                  title: 'Limpieza',
                  description: 'Limpieza profesional',
                ),
                CardSwiperSearch(
                  imageUrl:
                      'https://mejorconsalud.as.com/wp-content/uploads/2023/05/mujer-tareas-domesticas.jpg',
                  title: 'Pintura',
                  description: 'Pintamos tu espacio',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CardSwiperSearch extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const CardSwiperSearch({
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
