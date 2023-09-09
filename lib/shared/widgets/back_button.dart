import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: darkBlue2,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        );
  }
}