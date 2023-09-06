import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';

// ignore: must_be_immutable
class CartBtnNavbar extends StatelessWidget {
  CartBtnNavbar({super.key, required this.total});
  String total;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: title1Bold.merge(
                  TextStyle(color: darkBlue),
                ),
              ),
              Text(
                '\$ $total',
                style: title1Bold.merge(
                  TextStyle(color: teal),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: teal,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Check Out',
              style: title1Bold.merge(
                TextStyle(color: white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
