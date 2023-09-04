import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      onTap: (index) {},
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
        Icon(
          Icons.list,
          color: white,
          size: 30,
        ),
      ],
    );
  }
}