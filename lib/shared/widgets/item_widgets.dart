import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';

// ignore: must_be_immutable
class ItemsWidget extends StatelessWidget {
  ItemsWidget({
    super.key,
    required this.discount,
    required this.image,
    required this.description,
    required this.price
  });
  String discount;
  String image;
  String description;
    String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: darkBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  discount,
                  style: title1.merge(
                    TextStyle(color: white),
                  ),
                ),
              ),
              Icon(
                Icons.favorite_border_rounded,
                color: ligthRed,
              )
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              child: Image.asset(
                image,
                height: 100,
                width: 100,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5),
            alignment: Alignment.centerLeft,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white2,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 2, bottom: 2),
              child: Text(
                description,
                style: title1.merge(
                  TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ $price',
                  style: TextStyle(
                    color: ligthRed,
                  ),
                ),
                Icon(
                  Icons.shopping_cart_checkout_rounded,
                  color: darkBlue2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
