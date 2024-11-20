// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:simple_e_commerce/components/drawer_page.dart';
import 'package:simple_e_commerce/components/navigation_bar.dart';
import 'package:simple_e_commerce/pages/cart_page.dart';
import 'package:simple_e_commerce/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: Scaffold.of(context).openDrawer,
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Colors.grey[900],
              )),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(
        onTabChange: (index) {
          changePage(index);
        },
      ),
      body: _pages[_selectedIndex],
      drawer: MyDrawer(),
    );
  }
}
