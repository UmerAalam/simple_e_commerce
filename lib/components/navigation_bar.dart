import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: GNav(gap: 15, mainAxisAlignment: MainAxisAlignment.center, tabs: [
        GButton(
          icon: Icons.home_filled,
          text: 'Home',
          iconColor: Colors.grey,
          iconActiveColor: Colors.grey[900],
          backgroundColor: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: 'Shop',
          iconColor: Colors.grey,
          iconActiveColor: Colors.grey[900],
          backgroundColor: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
      ]),
    );
  }
}
