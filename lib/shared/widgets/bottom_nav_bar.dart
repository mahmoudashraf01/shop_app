import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_strore/screens/home_screen.dart';
import 'package:shoping_strore/screens/shop_screen.dart';
import 'package:shoping_strore/shared/methods/navigation.dart';
import 'package:shoping_strore/shared/themes/colors.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    super.key,
    required this.iconCurrentIndex
  });
  int ?iconCurrentIndex;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: iconCurrentIndex!,
      onTap: (index) {
        if (index == 0) {
          goTo(context: context, screen: HomeScreen());
          iconCurrentIndex = index;
        }
        else if (index == 1) {
          goTo(context: context, screen: ShopScreen());
          iconCurrentIndex = index;
        }
      },
      height: 60,
      backgroundColor: transparent,
      color: darkBlue,
      animationDuration: Duration(milliseconds: 100),
      items: [
        Icon(
          Icons.home,
          color: white,
          size: 30,
        ),
        Icon(
          CupertinoIcons.cart_fill,
          color: white,
          size: 30,
        ),
      ],
    );
  }
}
