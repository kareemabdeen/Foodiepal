import 'package:flutter/material.dart';


class IconWithTextItem extends StatelessWidget {

  const IconWithTextItem({

    super.key,

    required this.icon,

    required this.textData,

  });


  final IconData icon;


  final String textData;


  @override

  Widget build(BuildContext context) {

    return Container(

      height: 34,

      width: 120,

      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),

      decoration: const BoxDecoration(

        color: Color(0xffFFFAE7),

        borderRadius: BorderRadius.all(

          Radius.circular(4),

        ),

      ),

      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [

          Icon(

            icon,

            color: const Color(0xffFA5A00),

            size: 24,

          ),

          Text(

            textData,

            style: const TextStyle(

              fontSize: 18.5,

              color: Colors.black,

              fontWeight: FontWeight.w400,

            ),

          ),

        ],

      ),

    );

  }

}

