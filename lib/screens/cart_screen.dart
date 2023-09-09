import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';
import 'package:shoping_strore/shared/widgets/cart_app_bar.dart';
import 'package:shoping_strore/shared/widgets/cart_btn_nav_bar.dart';
import 'package:shoping_strore/shared/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: white2,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                CartItem(
                  image: 'assets/1.jpg',
                  price: '55',
                ),
                CartItem(
                  image: 'assets/sweaters2.jpg',
                  price: '80',
                ),
                CartItem(
                  image: 'assets/4.jpg',
                  price: '120',
                ),
                CartItem(
                  image: 'assets/sweat_bants1.jpg',
                  price: '100',
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: teal,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.add,
                          color: white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Add Coupon Code',
                          style: title1Bold.merge(
                            TextStyle(
                              color: darkBlue2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBtnNavbar(total: '355',),
    );
  }
}
