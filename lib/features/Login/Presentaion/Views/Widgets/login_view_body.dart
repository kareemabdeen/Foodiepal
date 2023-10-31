import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/helper.dart';
import 'custom_button_widget.dart';
import 'login_description_widget.dart';
import 'login_image_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 12,
        ), // changed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LoginImageWidget(),
            const LoginDescription(),
            SizedBox(
              height: context.screenHight * .09,
            ),
            const CustomButton(
              buttonColor: Colors.blue,
              textColor: Colors.white,
              buttonIcon: Icon(
                FontAwesomeIcons.facebook,
                color: Colors.white,
                size: 20,
              ),
              buttonText: 'Continue with Facebook',
            ),
            SizedBox(
              height: context.screenHight * .019,
            ),
            const CustomButton(
                buttonColor: Colors.black,
                textColor: Colors.white,
                buttonIcon: Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                  size: 20,
                ),
                buttonText: 'Continue with Google'),
            SizedBox(
              height: context.screenHight * .019,
            ),
            CustomButton(
              onPressed: () => context.pushWithReplacmentNamed(
                AppRouter.kHomeView,
              ),
              buttonColor: Colors.black,
              textColor: Colors.white,
              buttonIcon: const Icon(
                Icons.email,
                color: Colors.white,
                size: 20,
              ),
              buttonText: 'Continue with Email',
            ),
          ],
        ),
      ),
    );
  }
}
