import 'package:flutter/material.dart';

class FavCircularButton extends StatelessWidget {
  const FavCircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 35,
      width: 35,
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: IconButton(
        padding: const EdgeInsets.all(3),
        onPressed: () {},
        icon: const Icon(
          Icons.favorite_outline_rounded,
          color: Colors.black,
          size: 22,
        ),
      ),
    );
  }
}
