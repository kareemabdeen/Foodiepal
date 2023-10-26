import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deliver Now',
              style: StylesManager.textStyle16
                  .copyWith(color: Colors.black.withOpacity(0.5)),
            ),
            Text(
              'Hi guest',
              style: StylesManager.textStyle30,
            ),
          ],
        ),
        Material(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey.shade200,
          child: IconButton(
            icon: const Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
