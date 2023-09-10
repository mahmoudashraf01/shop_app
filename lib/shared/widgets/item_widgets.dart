import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoping_strore/screens/item_screen.dart';
import 'package:shoping_strore/shared/methods/navigation.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';

// ignore: must_be_immutable
class ItemsWidget extends StatelessWidget {
  ItemsWidget(
      {super.key,
      required this.discount,
      required this.image,
      required this.description,
      required this.price,
      this.title});
  String discount;
  String image;
  String description;
  String price;
  String? title;

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
                  color: darkBlue2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  discount,
                  style: title1.merge(
                    TextStyle(color: white),
                  ),
                ),
              ),
              RatingBar.builder(
                // initialRating: 0,
                // minRating: 0,
                
                itemCount: 1,
                itemSize: 20,
                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, _) => Icon(
                  Icons.favorite,
                  color: ligthRed,
                ),
                onRatingUpdate: (value) {},
              ),
            ],
          ),
          InkWell(
            onTap: () {
              goTo(
                context: context,
                screen: ItemScreen(
                  img: image,
                  des: description,
                  title: title,
                  price: price,
                ),
              );
            },
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
            constraints: BoxConstraints(
              maxHeight: 70,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white2,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 2, bottom: 2),
              child: Text(
                description,
                maxLines: 3,
                style: title1.merge(
                  TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                    color: darkBlue2,
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
                    color: teal,
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
