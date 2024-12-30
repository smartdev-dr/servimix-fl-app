import 'package:flutter/material.dart';

class CustomAppbarHome extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(fontWeight: FontWeight.bold);

    return AppBar(
      title: Center(
        child: Text(
          'Servimix',
          style: titleStyle,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none_outlined),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
