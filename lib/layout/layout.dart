import 'package:flutter/material.dart';

import '../modules/category.dart';
import '../modules/fav.dart';
import '../modules/product.dart';
import '../modules/profile.dart';


class ShopLayout extends StatefulWidget {
  const ShopLayout({Key? key}) : super(key: key);

  @override
  State<ShopLayout> createState() => _ShopLayoutState();
}

class _ShopLayoutState extends State<ShopLayout> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    List<Widget> bottomScreen = [
      ProductsScreen(),
      CategoriesScreen(),
      FavoritesScreen(),
      ProfileScreen(),
    ];

    void changeBottom(int index) {
      setState(() {
        currentIndex = index;

      });
    }
    return Scaffold(
          appBar: AppBar(
            title: Text('Salla'),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search)),
            ],
          ),
          body: bottomScreen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: changeBottom,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),

        );


  }
}