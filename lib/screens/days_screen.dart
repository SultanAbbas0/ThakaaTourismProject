import 'package:flutter/material.dart';
import 'package:thakaa_tourism_project/screens/day1_screen.dart';

class DaysScreen extends StatelessWidget {
  DaysScreen({super.key});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: const <Widget>[
        Day1Screen(date: "OCT 10"),
        Day1Screen(
          date: "OCT 11",
        ),
        Day1Screen(
          date: "OCT 12",
        ),
      ],
    );
  }
}
