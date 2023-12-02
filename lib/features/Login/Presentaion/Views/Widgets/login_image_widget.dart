import 'package:flutter/material.dart';

import '../../../../../core/utils/helper.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/Login.png',
        height: context.screenHight * 0.35,
        width: context.screenWidth * 0.8,
      ),
    );
  }
}
