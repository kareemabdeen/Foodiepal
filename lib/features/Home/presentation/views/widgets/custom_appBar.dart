import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/Business%20Logic/Theme%20Cubit/theme_cubit.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String subTitle;
  final TextStyle titleStyle;
  final TextStyle subTitleStyle;
  final IconData icon;
  final double iconSize;
  final Function() iconFunction;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.titleStyle,
    required this.subTitle,
    required this.subTitleStyle,
    required this.icon,
    this.iconSize = 25,
    required this.iconFunction,
  });

  @override
  Widget build(BuildContext context) {
    String theme = BlocProvider.of<ThemeCubit>(context).getCurrentTheme();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: titleStyle,
            ),
            Text(
              subTitle,
              style: subTitleStyle,
            ),
          ],
        ),
        Material(
          borderRadius: BorderRadius.circular(50),
          color: theme == 'light'
              ? const Color(0xfff2f2f3)
              : Color.fromARGB(61, 182, 177, 177),
          child: IconButton(
            icon: Icon(
              icon,
              color: theme == 'light' ? Colors.black : Colors.white,
              size: iconSize,
            ),
            onPressed: iconFunction,
          ),
        ),
      ],
    );
  }
}
