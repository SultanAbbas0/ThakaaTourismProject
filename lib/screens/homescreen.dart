import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thakaa_tourism_project/models/trip.dart';
import 'package:thakaa_tourism_project/screens/bottom_navigation_bar_screen.dart';
import 'package:thakaa_tourism_project/screens/days_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({this.tripData, super.key});
  TripModel? tripData;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.home,
          Icons.settings,
          Icons.account_circle_rounded,
        ],
        activeIndex: 0,
        activeColor: Colors.black,
        inactiveColor: Colors.black26,

        backgroundColor: Color.fromARGB(255, 35, 92, 120),
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 0,
        elevation: 0,
        rightCornerRadius: 0,
        onTap: (x) {},
        //other params
      ),
      //backgroundColor: Color.fromRGBO(245, 233, 226, 1),
      // backgroundColor: const Color.fromRGBO(255, 250, 226, 1.0),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   shadowColor: Colors.transparent,
      //   iconTheme: const IconThemeData(color: Colors.green, size: 50),
      // ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     debugPrint('Floating Action Button');
      //   },
      //   child: const Icon(Icons.add),
      // ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Welcome\n\nOsama Alibrahim',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      // body: Card(
      //   child: Container(
      //     height: MediaQuery.of(context).size.height * 0.30,
      //     decoration: const BoxDecoration(
      //       image: DecorationImage(
      //         image: NetworkImage(
      //             "http://london.com/wp-content/uploads/2019/03/london_001.jpg"),
      //         fit: BoxFit.fitWidth,
      //         alignment: Alignment.center,
      //       ),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 60, 106, 129), Colors.white],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 90,
              ),
              SizedBox(
                height: 90,
                child: Text(
                  'Enjoy Your Trip!',
                  textAlign: TextAlign.center,
                  // style: TextStyle(
                  //   color: Color.fromARGB(255, 7, 133, 168),
                  //   fontSize: 44,
                  //   fontWeight: FontWeight.bold,
                  // ),
                  style: GoogleFonts.righteous(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 33, 101, 141),
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomNavigationBarScreen()),
                  );
                },
                child: Center(
                  child: Container(
                    height: 500,
                    margin: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://i.pinimg.com/750x/29/49/f6/2949f6dce7bcba303d9244b912954d17.jpg'),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.tripData!.Country,
                                textAlign: TextAlign.center,
                                // style: TextStyle(
                                //   color: Color.fromARGB(255, 242, 186, 135),
                                //   fontSize: 30,
                                //   fontWeight: FontWeight.bold,
                                // ),
                                style: GoogleFonts.oldStandardTt(
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 159, 102, 11),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                widget.tripData!.City,
                                textAlign: TextAlign.center,
                                // style: TextStyle(
                                //   color: Color.fromARGB(255, 242, 186, 135),
                                //   fontSize: 40,
                                //   fontWeight: FontWeight.bold,
                                // ),
                                style: GoogleFonts.oldStandardTt(
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 159, 102, 11),
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                '10-12TH OCT',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.oldStandardTt(
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 10, 10, 2),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "${widget.tripData!.Budget}\$",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.oldStandardTt(
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 249, 249, 246),
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
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
