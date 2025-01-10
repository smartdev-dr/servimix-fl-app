import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//review de la screen de servicios

class ReviewText extends StatelessWidget {
  const ReviewText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Mantenimiento de aire acondicionado',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Enim dolor ea ad ullamco. Laborum commodo dolor qui culpa ad cupidatat sunt. Occaecat cupidatat cupidatat ex minim sint do cupidatat nulla consectetur reprehenderit culpa.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/servimix.png'),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fernando Rodriguez '),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFF6307),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Reseñas',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const Text(
          '4.9/5.0',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 59,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              _ReviewCard(
                title: "Excelente",
                percentage: "35%",
                rating: 5,
              ),
              _ReviewCard(
                title: "Muy Bueno",
                percentage: "28%",
                rating: 4,
              ),
              _ReviewCard(
                title: "Bueno",
                percentage: "20%",
                rating: 3,
              ),
              _ReviewCard(
                title: "Regular",
                percentage: "17%",
                rating: 2,
              ),
            ],
          ),
        ),
        const SizedBox(height: 90),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            width: 393,
            height: 63,
            child: ElevatedButton(
              onPressed: () {
                context.push('/servicescreennext');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF6307),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Contratar Servicio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ReviewCard extends StatelessWidget {
  final String title;
  final String percentage;
  final int rating;

  const _ReviewCard({
    required this.title,
    required this.percentage,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      height: 59,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  percentage,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(width: 4),
                Row(
                  children: List.generate(
                    rating,
                    (index) => const Icon(
                      Icons.star,
                      size: 12,
                      color: Color(0xFFFF6307),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
