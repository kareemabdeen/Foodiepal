import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/Business%20Logic/Theme%20Cubit/theme_cubit.dart';
import 'package:food_app/core/global/themes/colors/colors_dark.dart';
import 'package:food_app/core/global/themes/colors/colors_light.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/helper.dart';

class OffersViewAppBar extends StatelessWidget {
  const OffersViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    String theme = BlocProvider.of<ThemeCubit>(context).getCurrentTheme();
    return GestureDetector(
      onTap: () {
        return context.pushWithReplacmentNamed(
          AppRouter.kHomeView,
        );
      },
      child: Align(
        alignment: Alignment.topLeft,
        child: Icon(
          Icons.arrow_back,
          size: 28,
          color: theme == 'light'
              ? AppColorsLight.primaryColor
              : AppColorsDark.primaryColor,
        ),
      ),
    );
  }
}
