import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 60, 106, 129), Colors.white],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 100,
                child: Text(
                  'Groups',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.righteous(
                    textStyle: TextStyle(
                        color: Color.fromARGB(255, 7, 133, 168),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 150,
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/bs.jpeg"))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Basketball',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold),
                            ),
                            FloatingActionButton.extended(
                              focusElevation: 50,
                              onPressed: null,
                              // ignore: sort_child_properties_last
                              icon:
                                  const Icon((Icons.add), color: Colors.white),
                              label:
                                  Text('6/8', style: TextStyle(fontSize: 20)),
                              backgroundColor: Colors.black,
                              elevation: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 150,
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/gg.jpeg"))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Climbing',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold),
                            ),
                            FloatingActionButton.extended(
                              focusElevation: 50,
                              onPressed: null,
                              // ignore: sort_child_properties_last
                              icon:
                                  const Icon((Icons.add), color: Colors.white),
                              label:
                                  Text('7/10', style: TextStyle(fontSize: 20)),
                              backgroundColor: Colors.black,
                              elevation: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 150,
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/cy.jpg"))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cycling',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold),
                            ),
                            FloatingActionButton.extended(
                              focusElevation: 50,
                              onPressed: null,
                              // ignore: sort_child_properties_last
                              icon:
                                  const Icon((Icons.add), color: Colors.white),
                              label:
                                  Text('6/9', style: TextStyle(fontSize: 20)),
                              backgroundColor: Colors.black,
                              elevation: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 150,
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/cm.jpeg"))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Camping',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold),
                            ),
                            FloatingActionButton.extended(
                              focusElevation: 50,
                              onPressed: null,
                              // ignore: sort_child_properties_last
                              icon:
                                  const Icon((Icons.add), color: Colors.white),
                              label:
                                  Text('8/12', style: TextStyle(fontSize: 20)),
                              backgroundColor: Colors.black,
                              elevation: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 150,
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sf.jpg"))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Safari',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold),
                            ),
                            FloatingActionButton.extended(
                              focusElevation: 50,
                              onPressed: null,
                              // ignore: sort_child_properties_last
                              icon:
                                  const Icon((Icons.add), color: Colors.white),
                              label:
                                  Text('5/10', style: TextStyle(fontSize: 20)),
                              backgroundColor: Colors.black,
                              elevation: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
