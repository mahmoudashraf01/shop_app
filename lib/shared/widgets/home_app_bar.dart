import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: darkBlue,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Vines Shop',
              style: h5Bold.merge(
                TextStyle(
                  color: darkBlue,
                ),
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeContent: Text(
              '5',
              style: TextStyle(
                color: white,
              ),
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.shopping_bag_rounded,
                color: darkBlue,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
