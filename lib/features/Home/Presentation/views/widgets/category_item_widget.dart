import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/features/Home/Presentation/views/Styles/ItemsTextStyles.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double containerHeight = context.screenHight * 0.17;
    double containerWidth = context.screenWidth * 0.3;
    return Container(
      height: context.screenHight * 0.17,
      width: context.screenWidth * 0.3,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(top: 12, left: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xfff2f2f3),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Food",
          style:
              ItemsTextStyles.textStyle18.copyWith(fontWeight: FontWeight.w700),
        ),
        const Text("25 mins", style: ItemsTextStyles.textStyle14),
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
    );
  }
}
