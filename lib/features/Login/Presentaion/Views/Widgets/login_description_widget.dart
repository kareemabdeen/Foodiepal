import 'package:flutter/material.dart';
import 'package:food_app/generated/l10n.dart';

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
        Text(S.of(context).loginOrCreateAnAccount,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(
          height: context.screenHight * .01,
        ),
        Text(
          S.of(context).LogInOrCreateAnAccountForAFasterOrderingExperience,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
