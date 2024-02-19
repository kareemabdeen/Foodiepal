import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomMenuButton extends StatelessWidget {
  const CustomMenuButton(
      {super.key,
      required this.buttonFunction,
      required this.buttonTitle,
      required this.leadingIcon});

  final Function() buttonFunction;
  final String buttonTitle;
  final IconData leadingIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Row(
        children: [
          IconButton(
            onPressed: buttonFunction,
            icon: Icon(leadingIcon, size: 28),
          ),
          const SizedBox(width: 8),
          Text(
            buttonTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Spacer(),
          IconButton(
            onPressed: buttonFunction,
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
