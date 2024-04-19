import 'package:cofee/model/coffee.dart';
import 'package:flutter/material.dart';

class coffeeList extends StatelessWidget {
  final coffee coffees;
  Function()? onTap;
  final icon;
  coffeeList(
      {super.key,
      required this.coffees,
      required this.onTap,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        leading: Image(image: AssetImage(coffees.image)),
        title: Text(coffees.name),
        subtitle: Text("\$" + coffees.price),
        trailing: IconButton(onPressed: onTap, icon: icon),
      ),
    );
  }
}
