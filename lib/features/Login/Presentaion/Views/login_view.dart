import 'package:flutter/material.dart';
import 'package:food_app/features/Login/Presentaion/Views/Widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}
