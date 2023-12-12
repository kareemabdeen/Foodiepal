import 'package:flutter/material.dart';


class CustomIconWithBackground extends StatelessWidget {

  const CustomIconWithBackground({

    super.key,

    this.iconFunction,

    required this.iconSize,

    required this.icon,

    required this.color,

  });


  final Color? color;


  final void Function()? iconFunction;


  final double? iconSize;


  final IconData? icon;


  @override

  Widget build(BuildContext context) {

    return Material(

      borderRadius: BorderRadius.circular(50),

      color: color,

      child: IconButton(

        icon: Icon(

          icon,

          color: Colors.black,

          size: iconSize,

        ),

        onPressed: iconFunction,

      ),

    );

  }

}
