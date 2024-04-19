import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class buttomnavbar extends StatelessWidget {
  Function(int)? onTabChange;
  buttomnavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
            color: Colors.black.withOpacity(0.6),
            activeColor: Colors.black.withOpacity(0.7),
            tabBackgroundColor: Colors.grey.withOpacity(0.3),
            padding: EdgeInsets.all(16),
            mainAxisAlignment: MainAxisAlignment.center,
            gap: 8,
            tabBorderRadius: 20,
            tabActiveBorder:
                Border.all(color: Colors.white.withOpacity(0.8), width: 2),
            onTabChange: (value) => onTabChange!(value),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Shop",
              ),
              GButton(
                icon: Icons.shopping_bag_outlined,
                text: "Cart",
              ),
            ]),
      ),
    );
  }
}
