import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:edulab/Theme.dart';
import 'package:edulab/pages/Homepage.dart';
import 'package:edulab/pages/saved.dart';
import 'package:edulab/pages/worksheet.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyNevBar extends StatefulWidget {
  @override
  _MyNevBarState createState() => _MyNevBarState();
}

class _MyNevBarState extends State<MyNevBar> {
  int currentIndex = 1;

  List listOfColors = [
    SavedPage(),
    HomePage(),
    WorkSheet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfColors[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color.fromARGB(255, 236, 236, 236),
        animationDuration: Duration(milliseconds: 200),
        showElevation: true,
        itemCornerRadius: 20,
        containerHeight: 60,
        iconSize: 30,
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: butColor2,
            inactiveColor: butColor,
            icon: Icon(Iconsax.save_21),
            title: Text('Saved'),
          ),
          BottomNavyBarItem(
            inactiveColor: butColor,
            activeColor: butColor2,
            icon: Icon(Iconsax.home_25),
            title: Text('Home'),
          ),
          BottomNavyBarItem(
            inactiveColor: butColor,
            activeColor: butColor2,
            icon: Icon(Iconsax.task_square5),
            title: Text('Worksheet'),
          ),
        ],
      ),
    );
  }
}
