import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/Business%20Logic/Theme%20Cubit/theme_cubit.dart';
import 'package:food_app/core/utils/assets.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/core/utils/styles.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
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
      ),
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
            border: Border.all(color: const Color.fromARGB(255, 234, 228, 228)),
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
    String theme = BlocProvider.of<ThemeCubit>(context).getCurrentTheme();
    return Row(
      children: [
        const Icon(
          Icons.remove,
          color: Colors.grey,
        ),
        Text(
          '    2    ',
          style: StylesManager.textStyle16
              .copyWith(color: theme == 'light' ? Colors.black : Colors.white),
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
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "EGP 29.00",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
