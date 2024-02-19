import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/Business%20Logic/Theme%20Cubit/theme_cubit.dart';
import 'package:food_app/generated/l10n.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/helper.dart';
import '../Styles/ItemsTextStyles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});
  @override
  Widget build(BuildContext context) {
    String theme = BlocProvider.of<ThemeCubit>(context).getCurrentTheme();
    double containerHeight = context.screenHight * 0.17;
    double containerWidth = context.screenWidth * 0.3;
    return GestureDetector(
      onTap: () {
        return context.pushWithReplacmentNamed(
          AppRouter.kOffersView,
        );
      },
      child: Container(
        height: context.screenHight * 0.17,
        width: context.screenWidth * 0.3,
        //margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.only(top: 12, left: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: theme == 'light'
              ? const Color(0xfff2f2f3)
              : Color.fromARGB(61, 182, 177, 177),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            S.of(context).Food,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 18),
          ),
          Text(S.of(context).min,
              style: Theme.of(context).textTheme.headlineSmall!),
          const SizedBox(
            height: 11,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/food_category_image.png",
              fit: BoxFit.cover,
              height: containerHeight * 0.4,
              width: containerWidth * 0.6,
            ),
          )
        ]),
      ),
    );
  }
}
