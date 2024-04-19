import 'package:cofee/components/button_nav_bar.dart';
import 'package:cofee/pages/cart_page.dart';
import 'package:cofee/pages/shop_page.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedindex = 0;

  void navigationbutton(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  List<Widget> _page = [
    // shop page
    shopPage(),
    // cart page
    cartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: buttomnavbar(
        onTabChange: (index) => navigationbutton(index),
      ),
      body: _page[_selectedindex],
    );
  }
}
