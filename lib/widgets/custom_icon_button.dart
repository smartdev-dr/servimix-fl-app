import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    const FontWeight fontWeight = FontWeight.bold;
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Text(
            'Categorías',
            style: TextStyle(
              fontSize: 20,
              fontWeight: fontWeight,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Wrap(
            spacing: 20,
            runSpacing: 10,
            alignment: WrapAlignment.spaceAround,
            children: [
              IconCustom(
                icon: Icons.air_outlined,
                text: 'Aires',
                color: Colors.grey,
              ),
              IconCustom(
                icon: Icons.air_outlined,
                text: 'Aires',
                color: Colors.grey,
              ),
              IconCustom(
                icon: Icons.air_outlined,
                text: 'Aires',
                color: Colors.grey,
              ),
              IconCustom(
                icon: Icons.air_outlined,
                text: 'Aires',
                color: Colors.grey,
              ),
              IconCustom(
                icon: Icons.air_outlined,
                text: 'Aires',
                color: Colors.grey,
              ),
              IconCustom(
                icon: Icons.air_outlined,
                text: 'Aires',
                color: Colors.grey,
              ),
              IconCustom(
                icon: Icons.air_outlined,
                text: 'Aires',
                color: Colors.grey,
              ),
              IconCustom(
                icon: Icons.air_outlined,
                text: 'Aires',
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class IconCustom extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const IconCustom({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Icon(icon, color: color),
          Text(text, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
