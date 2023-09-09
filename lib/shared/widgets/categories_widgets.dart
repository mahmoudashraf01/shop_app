import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';

// ignore: must_be_immutable
class CategotiesWidget extends StatelessWidget {
  CategotiesWidget({super.key,required this.image,required this.data});
  ImageProvider<Object> image;
  String data;


  @override
  Widget build(BuildContext context) {
    return Container(
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
            image: image,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            data,
            style: title1.merge(
              TextStyle(
                color: darkBlue2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
