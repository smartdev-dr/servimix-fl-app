import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? iconButton;

  final Color? color;
  final VoidCallback? onPressed;
  const CustomAppbar(
      {super.key,
      required this.title,
      this.iconButton,
      this.color,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(fontWeight: FontWeight.bold);

    return SafeArea(
      child: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: titleStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              iconButton,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
