import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';

// ignore: must_be_immutable
class CategotiesWidget extends StatelessWidget {
  CategotiesWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for(int i=0; i<5; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/$i.jpg'),
                  width: 40,
                  height: 40,
                ),
                Text(
                  'Backpack',
                  style: title1.merge(
                    TextStyle(
                      color: darkBlue,
                    ),
                  ),
                ),
              ],
            ),
          )
      ]),
    );
  }
}
