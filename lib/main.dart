import 'package:cofee/home_page.dart';
import 'package:cofee/model/cofee_shop.dart';
import 'package:cofee/pages/first_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => coffeeShop(),
    builder: (context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstPage(),
    ),
  ));
}
