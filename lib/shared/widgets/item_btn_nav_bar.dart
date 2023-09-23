import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_strore/screens/payment_screen.dart';
import 'package:shoping_strore/shared/methods/navigation.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';

// ignore: must_be_immutable
class ItembtnNavBar extends StatelessWidget {
  ItembtnNavBar({super.key, required this.price});
  String price;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$ $price',
              style: title1Bold.merge(
                TextStyle(
                  color: teal,
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                goTo(context: context, screen: PaymentScreen());
              },
              icon: Icon(
                CupertinoIcons.cart_badge_plus,
              ),
              label: Text(
                'Add To Cart',
                style: title1Bold,
              ),
              style: ButtonStyle(
                iconColor: MaterialStateProperty.all(white),
                backgroundColor: MaterialStateProperty.all(teal),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
