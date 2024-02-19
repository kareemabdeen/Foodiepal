import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_app/generated/l10n.dart';

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
                      S.of(context).HeyThere,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              fontWeight: FontWeight.w700,
                              color: kBlueColor,
                              letterSpacing: 1,
                              fontSize: 22),
                    ),
                    Text(
                      S
                          .of(context)
                          .LogInOrCreateAnAccountForAFasterOrderingExperience,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: kBlueColor,
                              ),
                    ),
                    ElevatedButton(

                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(color: Colors.white)),
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
                        child: Text(
                          S.of(context).signUp,
                        ))

                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: context.screenWidth * 0.3,
              child: CachedNetworkImage(
                imageUrl: kloginReminderImage,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
