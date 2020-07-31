import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  List categoriesname = [
    "Chines",
    "Italian",
    "Moroccan",
    "Spanish",
    "Mexican",
    "Japanais",
    "Korea"
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.27,
          width: MediaQuery.of(context).size.width,
          //color: Colors.white,
          child: ListView.builder(
              itemCount: categoriesname.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.20,
                      width: MediaQuery.of(context).size.width * 0.24,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/$index.jpg",
                              ),
                              maxRadius: 35,
                            ),
                          ),
                          Text(
                            categoriesname[index],
                            style: GoogleFonts.lato(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
