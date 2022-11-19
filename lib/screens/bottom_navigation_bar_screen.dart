import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import 'package:thakaa_tourism_project/models/trip.dart';
import 'package:thakaa_tourism_project/screens/day1_screen.dart';
import 'package:thakaa_tourism_project/screens/days_screen.dart';
import 'package:thakaa_tourism_project/screens/groups_screen.dart';
import 'package:thakaa_tourism_project/screens/hotSpot.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _item_index = 0;

  void onItemTap(selected_index) {
    setState(() {
      _item_index = selected_index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          DaysScreen(),
          GroupsScreen(),
          HotSpotScreen(),
        ],
        index: _item_index,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.schedule,
          Icons.group,
          Icons.place_outlined,
        ],
        activeIndex: _item_index,
        activeColor: Colors.black,
        inactiveColor: Colors.black26,

        backgroundColor: Color.fromARGB(255, 35, 92, 120),
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 0,
        elevation: 0,
        rightCornerRadius: 0,
        onTap: (index) => onItemTap(index),
        //other params
      ),
    );
  }
}
