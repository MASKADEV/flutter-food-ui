import 'package:flutter/material.dart';
import 'package:food_resto/widget/categories.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[300],
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.height,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.038,
                            ),
                            Text(
                              " ONLINE FOOD",
                              style: GoogleFonts.lato(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "MASKA SERVICES",
                              style: GoogleFonts.lato(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 13.0),
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.0481,
                              ),
                              Icon(
                                Icons.add_shopping_cart,
                                size: 35,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Appbar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Featured(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("CATEGORIES",
                            style: GoogleFonts.openSans(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        /*Text(
                      "See More",
                      style:
                          GoogleFonts.openSans(fontSize: 15, color: Colors.blue),
                    )*/
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Categories(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.transparent.withOpacity(0.1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(Icons.search),
              ),

              Text(
                "search your food here",
                style: GoogleFonts.lato(fontSize: 12),
              ),
              //Container(child: TextField()),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent.withOpacity(0.2),
                  maxRadius: 15,
                ),
              ),
            ],
          )),
    );
  }
}

class Featured extends StatelessWidget {
  List foodname = [
    "Ramen",
    "Cake",
    "Hakata Tonkotsu",
    "Burger",
    "Pizza",
    "Twinkies",
    "Ace cream",
    "Ace cream 2",
    "Ace cream 3"
  ];
  List foodprice = [
    "6.50\$",
    "3\$",
    "9.99\$",
    "6.40\$",
    "5\$",
    "4.50\$",
    "3\$",
    "2\$",
    "8.99\$"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.26,
      width: MediaQuery.of(context).size.width,
      //color: Colors.yellow,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("FEATURED",
                      style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              //color: Colors.yellow,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodname.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 3, right: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.14,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/featured${index}.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                )),
                            child: Stack(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.transparent.withOpacity(0.3),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        foodname[index],
                                        style: GoogleFonts.aBeeZee(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-1, 1),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.036,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Container(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      child: Center(
                                          child: Text("add to card",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment(-1, 0.6),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.036,
                                    width: MediaQuery.of(context).size.width *
                                        0.28,
                                    child: Container(
                                      child: Center(
                                          child: Row(
                                        children: [
                                          Text(foodprice[index],
                                              style: GoogleFonts.openSans(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                          Icon(
                                            Icons.star,
                                            size: 12,
                                            color: Colors.yellow[300],
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 12,
                                            color: Colors.yellow[300],
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 12,
                                            color: Colors.yellow[300],
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 12,
                                            color: Colors.yellow[300],
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 12,
                                            color: Colors.yellow[300],
                                          ),
                                        ],
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
