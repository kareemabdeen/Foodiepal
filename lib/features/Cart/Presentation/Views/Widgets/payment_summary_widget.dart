import 'package:flutter/material.dart';
import 'package:food_app/core/utils/styles.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Payment Summary",
            style: StylesManager.textStyle20
                .copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(height: 10),
        const PaymentDetials(paymentTitle: 'Subtotal', price: 'EGP 87.00'),
        const SizedBox(height: 10),
        const PaymentDetials(paymentTitle: 'Delivery fee', price: 'EGP 35.00'),
        const SizedBox(height: 10),
        const PaymentDetials(paymentTitle: 'Total amount', price: 'EGP 112.00'),
        const SizedBox(height: 10),
        Text(
          "Read more about fees",
          style: StylesManager.textStyle14
              .copyWith(fontWeight: FontWeight.w500, color: Colors.blue),
        ),
      ],
    );
  }
}

class PaymentDetials extends StatelessWidget {
  const PaymentDetials(
      {super.key, required this.paymentTitle, required this.price});
  final String paymentTitle;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          paymentTitle,
          style:
              StylesManager.textStyle14.copyWith(fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        Text(
          price,
          style:
              StylesManager.textStyle14.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
