import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Day1Screen extends StatelessWidget {
  const Day1Screen({this.date, super.key});
  final String? date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/750x/29/49/f6/2949f6dce7bcba303d9244b912954d17.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("LONDON",
                        style: GoogleFonts.oldStandardTt(
                          textStyle: TextStyle(
                              color: Color.fromARGB(255, 242, 186, 1),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )),
                    Text(date!,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 480,
            child: Box(),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 60, 106, 129), Colors.white],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Box extends StatefulWidget {
  Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  List<Widget> x = [boxColumn(), boxColumn2(), boxColumn3()];
  bool _visible = true;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          _visible = !_visible;

                          //_visible = !_visible;
                        });
                        await Future.delayed(Duration(milliseconds: 500));
                        setState(() {
                          _visible = !_visible;
                          index = 0;

                          //_visible = !_visible;
                        });
                      },
                      child: Container(
                        child: Text("Morning"),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 205, 129, 8)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                    ),
                  ),
                  Container(
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          _visible = !_visible;

                          //_visible = !_visible;
                        });
                        await Future.delayed(Duration(milliseconds: 500));
                        setState(() {
                          _visible = !_visible;
                          index = 1;

                          //_visible = !_visible;
                        });
                      },
                      child: Container(
                        child: Text("Mid-day"),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 205, 129, 8)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                    ),
                  ),
                  Container(
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          _visible = !_visible;

                          //_visible = !_visible;
                        });
                        await Future.delayed(Duration(milliseconds: 500));
                        setState(() {
                          _visible = !_visible;
                          index = 2;

                          //_visible = !_visible;
                        });
                      },
                      child: Container(
                        child: Text("Night"),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 205, 129, 8)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                    ),
                  )
                ],
              )),
          AnimatedOpacity(
              opacity: _visible ? 1 : 0,
              duration: Duration(milliseconds: 500),
              child: x.elementAt(index)),
        ],
      ),
    );
  }
}

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  child: Text("morning"),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
              ),
            ),
            Container(
              width: 90,
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  child: Text("mid-day"),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
              ),
            ),
            Container(
              width: 90,
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  child: Text("night"),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
              ),
            )
          ],
        ));
  }
}

class boxColumn extends StatelessWidget {
  const boxColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: true ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Text("BREAKFAST",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 300,
            child: Row(
              children: [
                BoxCard(
                    imageURl:
                        'https://www.thedailymeal.com/img/gallery/the-best-restaurant-for-breakfast-in-every-state/0-Utah-MAIN2.jpg'),
                BoxCard(
                    imageURl:
                        'https://realfood.tesco.com/media/images/1400x919-Pink-ombre-pancakes-283d8170-a45b-4bc5-a3e9-ef09ad841530-0-1400x919.jpg'),
                BoxCard(
                    imageURl:
                        'https://www.timeoutriyadh.com/cloud/timeoutriyadh/2021/07/11/bestbreakfastsriyadhshutterstock_1.jpg')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Text("ACTIVITY",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            BoxCard(
                imageURl:
                    'https://blobsvc.wort.lu/picture/6b37a9d7c677a77510eef9cb4f37b45e/1200/797/wortv3/29e62c58e3675367e5153c2325b40bcedde5d7b6'),
            BoxCard(
                imageURl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb2hJolrj6KdasUDUzXkxf5JheHlzCgdEKg2sXc-TtgFuHX24Jur-LuviYV_-OLKecmWg&usqp=CAU'),
            BoxCard(
                imageURl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTGq0cjRw39ClOAQD5GSMrzx8LRdQhcNlzFg&usqp=CAU')
          ])
        ],
      ),
    );
  }
}

class boxColumn2 extends StatelessWidget {
  const boxColumn2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text("LUNCH",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 300,
          child: Row(
            children: [
              BoxCard(
                  imageURl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ_aeyox-TyeSpziZ7WQJDltVt2A-fu5KU2Q&usqp=CAU'),
              BoxCard(
                imageURl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTasbwP0_9oNDmf3ipC48dDusFVGbsBb-93gw&usqp=CAU',
              ),
              BoxCard(
                imageURl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXUy1r_PurtzTOXFC2ffQ4XB9dyQX3cNDYf2yweF5wajSWjzoJxbTbmflRclaXV6nCYkA&usqp=CAU',
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text("ACTIVITY",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        SizedBox(
          height: 5,
        ),
        Row(children: [
          BoxCard(
              imageURl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-icGRJ5G7LUC4Behgre-QT4IzQ82emdjubXbJiSfxmkShTjRmmLd7ZxG8caRbNLotzX8&usqp=CAU'),
          BoxCard(
            imageURl:
                'https://cdn.concreteplayground.com/content/uploads/2017/09/FRANKIES-PIZZA-Katje-Ford-5.jpg',
          ),
          BoxCard(
            imageURl:
                'https://www.visitbritainshop.com/sites/default/files/styles/product_gallery_xl/public/2021-10/LCCresized.jpg?h=d1cb525d&itok=o3vlW5d7',
          )
        ])
      ],
    );
  }
}

class boxColumn3 extends StatelessWidget {
  const boxColumn3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text("DINNER",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 300,
          child: Row(
            children: [
              BoxCard(
                imageURl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2W6Xov_zn0ZscIgp28WS6iTIaiWfLzb615w&usqp=CAU',
              ),
              BoxCard(
                imageURl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGfJKKYZF2ZEzJxRs9c0kclI8twUfgFfyHgw&usqp=CAU',
              ),
              BoxCard(
                imageURl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNCj_yrWohlcR7M7OdeStJwdWSRwAk36OIjh5cANOiaAAGhIsEnwxVsczqYkrdR2o3Ssk&usqp=CAU',
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text("ACTIVITY",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        SizedBox(
          height: 5,
        ),
        Row(children: [
          BoxCard(
            imageURl:
                'https://www.visitbritainshop.com/sites/default/files/styles/product_gallery_xl/public/2022-06/Encore_B-Bakery_Afternoon-Tea-Bus-Tour_R.jpg?h=5d8f6160&itok=SQ7ujmHI',
          ),
          BoxCard(
            imageURl:
                'https://www.visitbritainshop.com/sites/default/files/styles/product_gallery_xl/public/2022-08/Royal_London_and_Windsor_Full_Day_Tour_1.jpg?h=d1cb525d&itok=H-TKGKI6',
          ),
          BoxCard(
            imageURl:
                'https://www.visitbritainshop.com/sites/default/files/styles/product_gallery_xl/public/2022-09/Alton%20Towers%20_%20Merlin%20_%20Wicker%20Man%20-%205.jpg?h=a83af5ff&itok=iEj2Hakz',
          )
        ])
      ],
    );
  }
}

class BoxCard extends StatelessWidget {
  BoxCard({this.imageURl, this.resName, super.key});
  String? resName;
  String? imageURl;
  String imageURl2 =
      "https://thumbs.dreamstime.com/b/big-ben-london-autumn-leaves-32915756.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 103,
      width: 90,
      child: Container(
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(left: 5, top: 10),
        child: Text(
          resName == null ? "" : resName!,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(imageURl == null ? imageURl2 : imageURl!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
