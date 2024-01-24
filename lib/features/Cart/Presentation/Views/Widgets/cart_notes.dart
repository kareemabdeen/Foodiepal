import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/core/utils/styles.dart';

class CartNotes extends StatelessWidget {
  const CartNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.screenHight * 0.12,
      child: Column(children: [
        const Divider(
          color: Color.fromARGB(255, 221, 212, 212),
        ),
        const Spacer(),
        Row(
          children: [
            const Icon(
              Icons.mode_comment_outlined,
              color: Color.fromARGB(255, 221, 212, 212),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "This resturant does not currently accept \n special requests",
              style: StylesManager.textStyle16.copyWith(color: Colors.grey),
            ),
          ],
        ),
        const Spacer(),
        const Divider(
          color: Color.fromARGB(255, 221, 212, 212),
        ),
      ]),
    );
  }
}
