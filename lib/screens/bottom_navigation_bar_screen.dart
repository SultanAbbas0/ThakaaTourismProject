import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import "package:cloud_firestore/cloud_firestore.dart";

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
      floatingActionButton: FloatingActionButton(
          child: Text("x"),
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
          }),
      body: IndexedStack(
        children: [
          Scaffold(
            body: Center(
              child: Text("Screen 1"),
            ),
          ),
          Scaffold(
            body: Center(
              child: Text("Screen 2"),
            ),
          )
        ],
        index: _item_index,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.directions_transit_sharp,
          Icons.schedule,
          Icons.group,
          Icons.place_outlined,
        ],
        activeIndex: _item_index,
        activeColor: Colors.black,
        inactiveColor: Colors.black26,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        onTap: (index) => onItemTap(index),
        //other params
      ),
    );
  }
}
