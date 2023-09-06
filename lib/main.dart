import 'package:flutter/material.dart';
import 'package:shoping_strore/screens/cart_screen.dart';
import 'package:shoping_strore/screens/home_screen.dart';
import 'package:shoping_strore/screens/item_screen.dart';
import 'package:shoping_strore/shared/themes/colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shopping store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: white,
      ),
      routes: {
        '/':(context) => HomeScreen(),
        'CartScreen':(context) => CartScreen(),
        // 'itemScreen':(context) => ItemScreen(),
      },
    );
  }
}

