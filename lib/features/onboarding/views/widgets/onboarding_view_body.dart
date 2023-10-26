import 'package:flutter/material.dart';

import '../../../../core/utils/helper.dart';
import '../../../../core/widgets/primary_button_widget.dart';
import '../../data/onboarding_model.dart';
import 'swip_containers_list.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController pageController = PageController();

  List<OnBoardingModel> onboardingList = [
    OnBoardingModel(
      title: 'Dine In in fine resturants ',
      image: 'assets/images/WhatsApp Image 2023-10-24 at 9.35.09 PM.jpeg',
      subTitile:
          'Get yummy deticious food at your\n service in within less time',
    ),
    OnBoardingModel(
      title: 'Food delivery at door step',
      image: 'assets/images/WhatsApp Image 2023-10-24 at 9.35.08 PM (1).jpeg',
      subTitile:
          'Get yummy deticious food at your\n service in within less time',
    ),
    OnBoardingModel(
      title: 'Grocery & Essentials Delivery ',
      image: 'assets/images/WhatsApp Image 2023-10-24 at 9.35.08 PM.jpeg',
      subTitile:
          'Get yummy deticious food at your\n service in within less time',
    ),
    OnBoardingModel(
      title: 'Get any Pacage Delivered',
      image: 'assets/images/WhatsApp Image 2023-10-24 at 9.35.08 PM (1).jpeg',
      subTitile:
          'Get yummy deticious food at your\n service in within less time',
    ),
  ];
  int? currentPageNumber;
  @override
  void initState() {
    super.initState();
    currentPageNumber = 0;
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (pageindex) {
        setState(
          () {
            currentPageNumber = pageindex;
          },
        );
      },
      controller: pageController,
      itemCount: onboardingList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.screenWidth * .022,
          ),
          child: Column(
            children: [
              SizedBox(
                //25
                height: context.screenHight * .029,
              ),
              CustomSwipeContainersList(
                itemCount: onboardingList.length,
                currentPageNumber: currentPageNumber!,
              ),
              SizedBox(
                height: context.screenHight * .6,
                child: AspectRatio(
                  aspectRatio: 2 / 4,
                  child: Image.asset(
                    onboardingList[index].image,
                  ),
                ),
              ),
              //Todo : images should be changed later .
              Text(
                onboardingList[index].title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: context.screenHight * .013,
              ),
              Text(
                onboardingList[index].subTitile,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: context.screenHight * .055,
              ),
              GeneralButton(
                onPressed: () {
                  pageController.nextPage(
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                    curve: Curves.easeInCirc,
                  );
                },
              ),
              SizedBox(
                height: context.screenHight * .015,
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
