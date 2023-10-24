import 'package:flutter/material.dart';

import '../utils/helper.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: context.screenHight * .056,
      minWidth: context.screenWidth * .94,
      onPressed: onPressed,
      textColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      color: Colors.black,
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Next  ',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            size: 13,
          ),
        ],
      ),
    );
  }
}
