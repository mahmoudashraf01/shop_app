import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';
import 'package:shoping_strore/shared/widgets/bottom_nav_bar.dart';
import 'package:shoping_strore/shared/widgets/home_app_bar.dart';
import 'package:shoping_strore/shared/widgets/item_widgets.dart';
import 'package:shoping_strore/shared/widgets/item_widgets_shop.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: white2,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    'Products',
                    style: h3Bold.merge(
                      TextStyle(color: darkBlue2),
                    ),
                  ),
                ),
                //adding items
                GridView.count(
                  childAspectRatio: .68,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  children: [
                    ItemsWidgetShop(
                      image: 'assets/3.jpg',
                      description:
                          'Nice backpack for travelling or packing tools',
                      price: '55',
                      title: 'Bracelet',
                    ),
                    ItemsWidgetShop(
                      image: 'assets/5.jpg',
                      description:
                          'Nice backpack for travelling or packing tools',
                      price: '55',
                      title: 'Hooded Shirt',
                    ),
                    ItemsWidgetShop(
                      image: 'assets/sneekers1.jpg',
                      description:
                          'Nice backpack for travelling or packing tools',
                      price: '55',
                      title: 'Sneaker',
                    ),
                    ItemsWidgetShop(
                      image: 'assets/sweat_bants1.jpg',
                      description:
                          'Nice backpack for travelling or packing tools',
                      price: '55',
                      title: 'Sweat Bants',
                    ),
                    ItemsWidget(
                      discount: '-50%',
                      image: 'assets/1.jpg',
                      description:
                          'Nice backpack for travelling or packing tools',
                      price: '55',
                      title: 'Backpack',
                    ),
                    ItemsWidget(
                      discount: '-30%',
                      image: 'assets/sweaters2.jpg',
                      description:
                          'Cool sweater worn on many occasions and many places',
                      price: '80',
                      title: 'Cool Jacket',
                    ),
                    ItemsWidget(
                      discount: '-60%',
                      image: 'assets/watch1.jpg',
                      description: 'Awesome smart watch with many options',
                      price: '40',
                      title: 'Smart Watch',
                    ),
                    ItemsWidget(
                      discount: '-20%',
                      image: 'assets/4.jpg',
                      description:
                          'Nice hoodie worn on many occasions and many places',
                      price: '120',
                      title: 'Cool Hodie',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        iconCurrentIndex: 1,
      ),
      extendBody: true,
    );
  }
}
