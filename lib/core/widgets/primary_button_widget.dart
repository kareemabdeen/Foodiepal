import 'package:flutter/material.dart';

import '../utils/helper.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            size: 13,
          ),
        ],
      ),
    );
  }
}
