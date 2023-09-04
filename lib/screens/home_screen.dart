import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';
import 'package:shoping_strore/shared/widgets/categories_widgets.dart';
import 'package:shoping_strore/shared/widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            height: 500,
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
                        image: AssetImage('assets/1.jpg'), data: 'Backpack',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/2.jpg'), data: 'Bracelet',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/3.jpg'), data: 'Bracelet',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/4.jpg'), data: 'Cool Jacket',
                      ),
                      CategotiesWidget(
                        image: AssetImage('assets/5.jpg'), data: 'Hooded Shirt',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
