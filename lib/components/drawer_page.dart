// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Image.asset(
              "assets/images/nike_logo.png",
              color: Colors.white,
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 500),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.info_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Info",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 15),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Log Out",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
