import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'custom_appBar.dart';
import 'custom_search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomAppBar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomSearchTextField(),
        ),
        Row(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: CustomCarouselSlider(),
        ),
      ],
    );
  }
}

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    List items = [
      'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/food-deal-offer-video-ad-design-template-7860739098a2ec5f0e4bbd802c6b9308_screen.jpg?ts=1629980182',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWDCOWDeK3mNgi8WY0ayRMrkJnjC98JtSv2g&usqp=CAU',
      'https://wpcdn.kuusoft.com/wp-content/uploads/sites/8/2021/02/26153804/MostProfitableMenuItems-Twitter-1200x675-V03.jpg',
    ];

    int cIndex = 0;
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
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
                cIndex = index;
                print("cIndex: $cIndex");
                print("index: $index");
              });
            },
            scrollDirection: Axis.horizontal,
          ),
          items: items.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Image.network(
                      '$i',
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        AnimatedSmoothIndicator(
          activeIndex: cIndex,
          count: items.length,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 10,
            dotColor: Colors.grey,
            activeDotColor: Colors.blue,
            paintStyle: PaintingStyle.fill,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int j = 0; j < items.length; j++)
              Container(
                margin: const EdgeInsets.all(5.0),
                width: 10.0,
                height: 10.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: cIndex == j ? Colors.blue : Colors.white,
                    boxShadow: [
                      const BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(2, 2))
                    ]),
              )
          ],
        ),
      ],
    );
  }
}
