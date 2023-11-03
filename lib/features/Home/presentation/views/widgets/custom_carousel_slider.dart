import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/helper.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  int carousalIndex = 0;

  List<String> carousalImages = [
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/food-deal-offer-video-ad-design-template-7860739098a2ec5f0e4bbd802c6b9308_screen.jpg?ts=1629980182',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWDCOWDeK3mNgi8WY0ayRMrkJnjC98JtSv2g&usqp=CAU',
    'https://wpcdn.kuusoft.com/wp-content/uploads/sites/8/2021/02/26153804/MostProfitableMenuItems-Twitter-1200x675-V03.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 145,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              setState(() {
                carousalIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
          items: carousalImages.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(17.0),
                  child: Container(
                    width: context.screenWidth,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Image.network(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: AnimatedSmoothIndicator(
            activeIndex: carousalIndex,
            count: carousalImages.length,
            effect: ExpandingDotsEffect(
              dotHeight: 5,
              dotWidth: 8,
              spacing: 10,
              dotColor: Colors.grey.shade300,
              activeDotColor: Colors.black,
              paintStyle: PaintingStyle.fill,
            ),
          ),
        ),
      ],
    );
  }
}
