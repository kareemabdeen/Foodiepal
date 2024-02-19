import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/core/Business%20Logic/Theme%20Cubit/theme_cubit.dart';
import 'package:food_app/generated/l10n.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/helper.dart';
import 'custom_button_widget.dart';
import 'login_description_widget.dart';
import 'login_image_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String theme = BlocProvider.of<ThemeCubit>(context).getCurrentTheme();
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
            const LoginImage(),
            const LoginDescription(),
            SizedBox(
              height: context.screenHight * .09,
            ),
            CustomButton(
              buttonColor: Colors.blue,
              textColor: Colors.white,
              buttonIcon: const Icon(
                FontAwesomeIcons.facebook,
                color: Colors.white,
                size: 20,
              ),
              buttonText: S.of(context).ContinueWithFacebook,
            ),
            SizedBox(
              height: context.screenHight * .019,
            ),
            CustomButton(
                buttonColor: Colors.black,
                textColor: Colors.white,
                buttonIcon: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                  size: 20,
                ),
                buttonText: S.of(context).ContinueWithGoogle),
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
              buttonText: S.of(context).ContinueWithEmail,
            ),
          ],
        ),
      ),
    );
  }
}
