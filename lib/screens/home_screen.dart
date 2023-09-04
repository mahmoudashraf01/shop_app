import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          HomeAppBar(),
        ],
      ),
    );
  }
}