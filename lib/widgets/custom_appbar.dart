import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData iconButton;

  final Color? color;
  final VoidCallback? onPressed;
  const CustomAppbar(
      {super.key,
      required this.title,
      required this.iconButton,
      this.color,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(fontWeight: FontWeight.bold);

    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: titleStyle,
      ),
      actions: [
        IconButton(
          icon: Icon(
            iconButton,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
