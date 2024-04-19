import 'package:cofee/model/cofee_shop.dart';
import 'package:cofee/model/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/coffee_list.dart';

class shopPage extends StatelessWidget {
  const shopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // void additemtothecart(coffee additem) {
    //   Provider.of(context, listen: false).additem(additem);
    // }

    return Consumer<coffeeShop>(
      builder: (context, value, child) => SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              "Let's order some Coffee",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: value.shop.length,
                itemBuilder: (context, index) {
                  coffee eachcoffee = value.shop[index];
                  return coffeeList(
                    coffees: eachcoffee,
                    onTap: () => Provider.of<coffeeShop>(context, listen: false)
                        .additem(eachcoffee),
                    icon: Icon(Icons.add),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
