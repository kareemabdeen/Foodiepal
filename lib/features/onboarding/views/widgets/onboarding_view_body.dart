import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_app/constant.dart';
import 'package:food_app/core/database/cache/cach_helper.dart';
import 'package:food_app/core/services/dependency_injection.dart';

import 'package:food_app/core/utils/assets.dart';

import 'package:food_app/features/onboarding/data/onboarding_model.dart';
import 'package:food_app/generated/l10n.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/helper.dart';
import '../../../../core/widgets/primary_button_widget.dart';
import 'swip_containers_list.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController pageController = PageController();

  int? currentPageNumber;

  @override
  void initState() {
    super.initState();
    currentPageNumber = 0;
  }

  @override
  Widget build(BuildContext context) {
    List<OnBoardingModel> onboardingList = [
      OnBoardingModel(
        title: S.of(context).onboardingTitleOne,
        image: Assets.imagesOnboardingimg2,
        subTitile: S.of(context).onboardingSubtitleOne,
      ),
      OnBoardingModel(
        title: S.of(context).onboardingTitleTwo,
        image: Assets.imagesOnboardingimg2,
        subTitile: S.of(context).onboardingSubTitleTwo,
      ),
      OnBoardingModel(
        title: S.of(context).onboardingTitleThree,
        image: Assets.imagesOnboardingimg3,
        subTitile: S.of(context).onboardingSubTitleFour,
      ),
      OnBoardingModel(
        title: S.of(context).onboardingTitleFour,
        image: Assets.imagesOnboardingimg4,
        subTitile: S.of(context).onboardingSubTitleFour,
      ),
    ];
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
                child: ImageWithAspectRatio(
                  aspectRatio: 2 / 4,
                  image: onboardingList[index].image,
                ),
              ),
              //Todo : images should be changed later .
              Text(onboardingList[index].title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontSize: 25)),
              SizedBox(
                height: context.screenHight * .013,
              ),
              Text(onboardingList[index].subTitile,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(
                height: context.screenHight * .055,
              ),
              GeneralButton(
                text: (currentPageNumber == 3)
                    ? S.of(context).getStarted
                    : S.of(context).next,
                onPressed: () {
                  navigateToNextPage();
                  if (currentPageNumber == 3) {
                    onboardingVisited();
                    context.pushWithReplacmentNamed(
                      AppRouter.kLoginPage,
                    );
                  }
                },
              ),
              SizedBox(
                height: context.screenHight * .015,
              ),
              //? are we need here to call onboardingVisited ? or not
              (currentPageNumber != 3)
                  ? InkWell(
                      onTap: () {},
                      child: Text(S.of(context).skip,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontWeight: FontWeight.w800, fontSize: 16)),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        );
      },
    );
  }

  void onboardingVisited() {
    getIt<CacheHelper>().saveData(key: isOnBoardingvisited, value: true);
  }

  void navigateToNextPage() {
    pageController.nextPage(
      duration: const Duration(
        milliseconds: 500,
      ),
      curve: Curves.easeInOutSine,
    );
  }
}
