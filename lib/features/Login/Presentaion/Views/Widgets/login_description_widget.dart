import 'package:flutter/material.dart';

import '../../../../../core/utils/helper.dart';

class LoginDescription extends StatelessWidget {
  const LoginDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.screenHight * .05,
        ),
        const Text(
          'Login or create an account',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: context.screenHight * .01,
        ),
        const Text(
          'Login or create an account to receive rewards \nand save your details for a faster checkout \nexperience.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
