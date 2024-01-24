import 'package:flutter/material.dart';
import 'package:food_app/core/utils/helper.dart';
import 'package:food_app/core/utils/styles.dart';
import 'package:food_app/core/widgets/primary_button_widget.dart';
import 'package:food_app/features/Cart/Presentation/Views/Widgets/cart_app_bar_widget.dart';
import 'package:food_app/features/Cart/Presentation/Views/Widgets/cart_item_widget.dart';
import 'package:food_app/features/Cart/Presentation/Views/Widgets/cart_notes.dart';
import 'package:food_app/features/Cart/Presentation/Views/Widgets/payment_summary_widget.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 22, right: 22, top: 22, bottom: 32),
      child: const Column(
        children: [
          CartAppBar(),
          SizedBox(height: 20),
          CartItemsListView(),
          SizedBox(height: 10),
          CartNotes(),
          SizedBox(height: 10),
          PaymentSummary(),
          Spacer(),
          CartButton()
        ],
      ),
    );
  }
}

class CartItemsListView extends StatelessWidget {
  const CartItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHight * 0.27,
      child: ListView.builder(
          itemCount: 12,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const CartItemWidget();
          }),
    );
  }
}

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: context.screenHight * .056,
        minWidth: context.screenWidth * .94,
        onPressed: () {},
        textColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        color: Colors.black,
        child: const Text(
          'Checkout',
          style: TextStyle(
            fontSize: 15,
          ),
        ));
  }
}
