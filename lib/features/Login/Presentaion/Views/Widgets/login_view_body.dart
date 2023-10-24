import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/core/widgets/primary_button_widget.dart';
import 'package:food_app/features/Login/Presentaion/Views/Widgets/custom_button_widget.dart';
import 'package:food_app/features/Login/Presentaion/Views/Widgets/login_description_widget.dart';
import 'package:food_app/features/Login/Presentaion/Views/Widgets/login_image_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoginImageWidget(),
            LoginDescription(),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                buttonColor: Colors.blue,
                textColor: Colors.white,
                buttonIcon: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white,
                  size: 20,
                ),
                buttonText: 'Continue with Facebook'),
            CustomButton(
                buttonColor: Colors.black,
                textColor: Colors.white,
                buttonIcon: Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                  size: 20,
                ),
                buttonText: 'Continue with Google'),
            CustomButton(
                buttonColor: Colors.black,
                textColor: Colors.white,
                buttonIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 20,
                ),
                buttonText: 'Continue with Email')
          ],
        ),
      ),
    );
  }
}
