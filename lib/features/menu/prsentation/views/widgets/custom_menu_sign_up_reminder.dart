import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/helper.dart';
import '../../../../../core/utils/styles.dart';

class SignUpReminder extends StatelessWidget {
  const SignUpReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Card(
        elevation: 0,
        color: kYellowColor,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: context.screenWidth * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey there!',
                      style: StylesManager.titleMedium.copyWith(
                          color: kBlueColor, letterSpacing: 1, fontSize: 22),
                    ),
                    Text(
                      "Log in or create an account for a faster ordering experience.",
                      style: StylesManager.textStyle14.copyWith(
                        color: kBlueColor,
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(
                            StylesManager.textStyle18,
                          ),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(kBlueColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                side: BorderSide(color: kBlueColor)),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Sign up',
                        ))
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: context.screenWidth * 0.3,
              child: CachedNetworkImage(
                imageUrl:
                    'https://knowunity.com/_next/static/media/register.957389f4.webp',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
