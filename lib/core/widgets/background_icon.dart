import 'package:flutter/material.dart';

class CustomIconWithBackground extends StatelessWidget {
  const CustomIconWithBackground({
    super.key,
    this.iconFunction,
    required this.iconSize,
    required this.icon,
    required this.color,
  });

  final Color? color;

  final void Function()? iconFunction;

  final double? iconSize;

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      child: Icon(icon),
    );
  }
}
