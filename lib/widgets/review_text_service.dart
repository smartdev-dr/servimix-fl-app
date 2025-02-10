import 'package:flutter/material.dart';

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
        const SizedBox(
          height: 20,
        ),
        const Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/servimix.png'),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    'Fernando Rodriguez '),
                Icon(
                  size: 20,
                  Icons.star,
                  color: Color(0xFFFF6307),
                ),
                Text(
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    '10 reviews')
              ],
            )
          ],
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
            children: [_ReviewCard()],
          ),
        ),
      ],
    );
  }
}

class _ReviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 136,
      height: 59,
      child: Card(
        color: Colors.grey[300],
        elevation: 4,
        child: const Row(
          children: [Icon(color: Color(0xFFFF6307), Icons.star)],
        ),
      ),
    );
  }
}
