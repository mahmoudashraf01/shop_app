import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';
import 'package:shoping_strore/shared/widgets/back_button.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white2,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          MyBackButton(),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'Product',
              style: h5Bold.merge(
                TextStyle(color: darkBlue2),
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            color: ligthRed,
            size: 30,
          ),
        ],
      ),
    );
  }
}
