import 'package:flutter/material.dart';
import 'package:food_app/features/Cart/Presentation/Views/Widgets/cart_page_body.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CartPageBody()),
    );
  }
}
