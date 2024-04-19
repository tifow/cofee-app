import 'package:cofee/components/coffee_list.dart';
import 'package:cofee/model/cofee_shop.dart';
import 'package:cofee/model/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<coffeeShop>(
        builder: (context, value, child) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: Text(
                  "your Cart",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    coffee removecoffee = value.cart[index];
                    return coffeeList(
                        coffees: removecoffee,
                        onTap: () =>
                            Provider.of<coffeeShop>(context, listen: false)
                                .removeitem(removecoffee),
                        icon: Icon(Icons.delete));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber[200],
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Total Price is",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                            Text(
                              "\$ " + value.totalprice(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Pay Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ]),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
