import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/background_icon.dart';
import '../../../../../core/widgets/image_with_aspect_ratio.dart';
import 'icon_with_text_item.dart';

class RestaurantViewBody extends StatelessWidget {
  const RestaurantViewBody({
    super.key,
  });

  // final Widget restaurantItem;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 2,
            ),
            child: CustomIconWithBackground(
              color: Colors.white,
              icon: Icons.arrow_back,
              iconSize: 24,
              iconFunction: () => Navigator.pop(context),
            ),
          ),
          //   flexibleSpace: Stack(
          //     children: [
          //       FlexibleSpaceBar(
          //         background: Image.asset(
          //           Assets.imagesStarbucksCover,
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //       const Positioned(
          //         top: 50.0, // Adjust as needed
          //         left: 20.0,
          //         child: RestaurantProfileInfoCard(),
          //       ),
          //     ],
          //   ),
          //   expandedHeight: context.screenHight * .25,
          //   actions: const [
          //     CustomIconWithBackground(
          //       color: Colors.white,
          //       icon: Icons.search,
          //       iconSize: 24,
          //     ),
          //     Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 16.0),
          //       child: CustomIconWithBackground(
          //         color: Colors.white,
          //         icon: Icons.share,
          //         iconSize: 24,
          //       ),
          //     ),
          //   ],
        ),
      ],
    );
  }
}

//  return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           SizedBox(height: context.screenHight * .1),
//           // const RestaurantProfileInfoCard(),
//           // SizedBox(height: context.screenHight * .1),
//           // const Row(
//           //   mainAxisAlignment: MainAxisAlignment
//           //       .spaceAround, //Todo:check if it not same as we know
//           //   children: [
//           //     BlaBlaItem(),
//           //     BlaBlaItem(),
//           //   ],
//           // ),
//           // const Gap(20),
//           const RestaurantMealItem(),
//         ],
//       ),
//     );
class BlaBlaItem extends StatelessWidget {
  const BlaBlaItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 175,
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: Color(0xffFFF4F8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, .9),
            color: Color.fromARGB(255, 226, 225, 226),
            spreadRadius: 0,
            blurRadius: 0,
            blurStyle: BlurStyle.normal,
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'EGP 102.01 off on ...',
              style: TextStyle(
                color: Color(0xffFC0167),
                fontWeight: FontWeight.bold,
                //todo :change Font familly
                fontSize: 12,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              'No minimum spend',
              style: TextStyle(
                color: Colors.pinkAccent.shade200,
                fontSize: 11.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RestaurantMealItem extends StatelessWidget {
  const RestaurantMealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 1,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.zero,
        color: Colors.blueGrey,
      ),
      height: 180,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dinner Meal - Large',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.clip,
                  fontSize: 17,
                ),
              ),
              const Text(
                '3 pieces fried chicken \n,served with smal french\n fries, oleslaw salad, bun an',
                style: TextStyle(
                  color: Color.fromARGB(160, 250, 250, 250),
                  fontWeight: FontWeight.w300,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Gap(20),
              const IconWithTextItem(
                icon: Icons.star,
                textData: 'Top rated',
              ),
              const Gap(10),
              const DifferentTextColorsInRow(),
              const Gap(18),
              Divider(
                height: 0,
                color: Colors.grey.shade300, // Todo : change it
                endIndent: 2,
                indent: 3,
                thickness: 0,
              ),
              const Expanded(
                child: ImageWithAspectRatio(
                    image: Assets.imagesBurger, aspectRatio: 1 / 1),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DifferentTextColorsInRow extends StatelessWidget {
  const DifferentTextColorsInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(),
        children: <InlineSpan>[
          TextSpan(
            text: 'EGY 175.00',
            style: TextStyle(
              color: Colors.pinkAccent.shade200,
              fontSize: 13,
            ),
          ),
          // const TextSpan(
          //   text: '   EGY 185.00',
          //   style: TextStyle(
          //     fontSize: 13,
          //   ),
          // ),
        ],
      ),
    );
  }
}
