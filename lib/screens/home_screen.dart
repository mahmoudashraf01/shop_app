import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';
import 'package:shoping_strore/shared/widgets/bottom_nav_bar.dart';
import 'package:shoping_strore/shared/widgets/categories_widgets.dart';
import 'package:shoping_strore/shared/widgets/home_app_bar.dart';
import 'package:shoping_strore/shared/widgets/item_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: white,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search ..',
                            icon: Icon(
                              Icons.search,
                              color: darkBlue,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  child: Text(
                    'Categoties',
                    style: h3Bold.merge(
                      TextStyle(color: darkBlue),
                    ),
                  ),
                ),
                //adding categories.
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategotiesWidget(
                        image: AssetImage('assets/1.jpg'),
                        data: 'Backpack',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/watch1.jpg'),
                        data: 'Smart Watch',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/3.jpg'),
                        data: 'Bracelet',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/4.jpg'),
                        data: 'Cool Hoodie',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/5.jpg'),
                        data: 'Hooded Shirt',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/sneekers1.jpg'),
                        data: 'Sneaker',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/sweat_bants1.jpg'),
                        data: 'Sweat Bants',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/sweaters2.jpg'),
                        data: 'Cool Jacket',
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    'Best Selling',
                    style: h3Bold.merge(
                      TextStyle(color: darkBlue),
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
                    ItemsWidget(
                      discount: '-50%',
                      image: 'assets/1.jpg',
                      description:
                          'Nice backpack for travelling or packing tools',
                      price: '55',
                    ),
                    ItemsWidget(
                      discount: '-30%',
                      image: 'assets/sweaters2.jpg',
                      description:
                          'Cool sweater worn on many occasions and many places',
                      price: '80',
                    ),
                    ItemsWidget(
                      discount: '-60%',
                      image: 'assets/watch1.jpg',
                      description: 'Awesome smart watch with many options',
                      price: '40',
                    ),
                    ItemsWidget(
                      discount: '-20%',
                      image: 'assets/4.jpg',
                      description:
                          'Nice hoodie worn on many occasions and many places',
                      price: '120',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      extendBody: true,
    );
  }
}


