import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';

class LoginImageWidget extends StatelessWidget {
  const LoginImageWidget({super.key});

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
