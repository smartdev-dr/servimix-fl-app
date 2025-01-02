import 'package:flutter/material.dart';

class CustomDropdowns extends StatelessWidget {
  const CustomDropdowns({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Row(
        children: [
          Expanded(
            child: _CustomDropdown(
              icon: Icons.location_on,
              hint: 'Ubicación',
              items: ['Ciudad A', 'Ciudad B', 'Ciudad C'],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: _CustomDropdown(
              icon: Icons.category,
              hint: 'Categorías',
              items: ['Categoría 1', 'Categoría 2', 'Categoría 3'],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomDropdown extends StatelessWidget {
  final IconData icon;
  final String hint;
  final List<String> items;

  const _CustomDropdown({
    required this.icon,
    required this.hint,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: DropdownButton(
        icon: Icon(Icons.arrow_drop_down, color: Colors.grey.shade600),
        isExpanded: true,
        underline: const SizedBox(),
        hint: Row(
          children: [
            Icon(icon, size: 20, color: Colors.orange),
            const SizedBox(width: 8),
            Text(hint,
                style: const TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        items: items
            .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
        onChanged: (value) {},
      ),
    );
  }
}
