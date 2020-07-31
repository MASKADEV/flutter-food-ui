import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.orange[300],
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/burger.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width,
                //color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 1),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.62,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                          child: Text(
                        "Burger",
                        style: GoogleFonts.roboto(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.grey[200],
                                      ),
                                      child: Center(
                                        child: Text(
                                          "-",
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.grey[200],
                                      ),
                                      child: Center(
                                        child: Text("1"),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.grey[200],
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "\$6.01",
                                style: GoogleFonts.roboto(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Align(
                        alignment: Alignment(-0.8, 0),
                        child: Container(
                          child: Text("Product  Description",
                              style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Align(
                        alignment: Alignment(-0.8, 0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0, right: 25),
                          child: Container(
                            child: Text(
                                "A hamburger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.",
                                style: GoogleFonts.raleway(fontSize: 12)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 2, color: Colors.orange[300]),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 35,
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                width:
                                    MediaQuery.of(context).size.height * 0.34,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orange[300]),
                                child: Center(
                                  child: Text("Add to card"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
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
