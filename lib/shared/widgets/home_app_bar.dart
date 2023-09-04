import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';

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
          
        ],
      ),
    );
  }
}
