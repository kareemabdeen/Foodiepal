import 'package:flutter/material.dart';

import 'package:food_app/core/utils/assets.dart';

import 'package:food_app/core/utils/helper.dart';

import 'package:food_app/core/widgets/background_icon.dart';


class RestaurantScreenAppBar extends StatelessWidget {

  const RestaurantScreenAppBar({super.key});


  @override

  Widget build(BuildContext context) {

    return SliverAppBar(

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

      flexibleSpace: FlexibleSpaceBar(

        background: Image.asset(

          Assets.imagesStarbucksCover,

          fit: BoxFit.cover,

        ),

      ),

      expandedHeight: context.screenHight * .25,

      actions: const [

        CustomIconWithBackground(

          color: Colors.white,

          icon: Icons.search,

          iconSize: 24,

        ),

        Padding(

          padding: EdgeInsets.symmetric(horizontal: 16.0),

          child: CustomIconWithBackground(

            color: Colors.white,

            icon: Icons.share,

            iconSize: 24,

          ),

        ),

      ],

    );

  }

}
