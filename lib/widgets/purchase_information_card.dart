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
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Direccion del servicio ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                          'Santo Domingo Residencial \nColinas del seminario #32',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          )),
                      IconButton(
                        onPressed: () {
                          // Acción al presionar el botón de editar
                        },
                        icon: const Icon(Icons.note_alt_outlined,
                            color: Colors.black),
                        iconSize: 25,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        const Row(
          children: [
            Text('Subtotal: ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            Spacer(),
            Text(
              '\$ 0.00',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        )
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
              icon: const Icon(Icons.remove_circle, color: Colors.grey),
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
