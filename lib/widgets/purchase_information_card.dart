import 'package:flutter/material.dart';

class PurchaseInformationCard extends StatelessWidget {
  const PurchaseInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            'Información de compra',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: SizedBox(
            width: 381,
            child: Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitleWithButtons('Lavado normal'),
                    const SizedBox(height: 20),
                    _buildTitleWithButtons('Lavado normal + ozono'),
                    const SizedBox(height: 20),
                    _buildTitleWithButtons('Lavado full interior'),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: 381,
          height: 88,
          child: Card(
            color: Colors.white,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('hola mundo')]),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTitleWithButtons(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                // Acción al presionar "-"
              },
              icon: const Icon(Icons.remove_circle, color: Colors.black),
              iconSize: 18,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
            IconButton(
              onPressed: () {
                // Acción al presionar "+"
              },
              icon: const Icon(Icons.add_box, color: Colors.black),
              iconSize: 18,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ],
        ),
      ],
    );
  }
}
