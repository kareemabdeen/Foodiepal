import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onPressed,
      required this.buttonColor,
      required this.textColor,
      required this.buttonIcon,
      required this.buttonText});
  final void Function()? onPressed;
  final textColor;
  final buttonColor;
  final buttonIcon;
  final buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // margin: EdgeInsets.symmetric(vertical: context.screenHight * .007),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        height: context.screenHight * .056,
        width: context.screenWidth * .9,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buttonIcon,
            const SizedBox(
              width: 60,
            ),
            Text(
              buttonText,
              style: TextStyle(fontSize: 15, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
