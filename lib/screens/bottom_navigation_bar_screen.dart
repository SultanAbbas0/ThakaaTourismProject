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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "home",
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "home2",
            activeIcon: Icon(Icons.home),
          ),
        ],
        currentIndex: _item_index,
        onTap: (selected_index) => onItemTap(selected_index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
