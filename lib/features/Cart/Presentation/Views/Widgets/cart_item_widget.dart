import 'package:flutter/material.dart';
import 'package:food_app/core/utils/assets.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/core/utils/styles.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ProductTitle(),
        Spacer(
          flex: 2,
        ),
        ProductCounter(),
        Spacer(
          flex: 1,
        ),
        ProductImage(),
      ],
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.screenHight * 0.084,
        width: context.screenWidth * 0.15,
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 234, 228, 228)),
            borderRadius: BorderRadius.circular(12)),
        child: Image.asset(
          Assets.imagesCartDemo,
          fit: BoxFit.fill,
        ));
  }
}

class ProductCounter extends StatelessWidget {
  const ProductCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.remove,
          color: Colors.grey,
        ),
        Text(
          '    2    ',
          style: StylesManager.textStyle16.copyWith(color: Colors.black),
        ),
        const Icon(Icons.add, color: Colors.grey),
      ],
    );
  }
}

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pepsi",
          style: StylesManager.textStyle16
              .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "EGP 29.00",
          style: StylesManager.textStyle16
              .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
        )
      ],
    );
  }
}
