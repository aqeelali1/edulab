import 'package:edulab/Theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../info.dart';

class Spject_page extends StatelessWidget {
  var i;

  Spject_page(this.i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: butColor2,
        ),
        backgroundColor: primColor,
        elevation: 0,
      ),
      backgroundColor: primColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    subject[i]["title"],
                    style: GoogleFonts.poppins(
                        color: butColor2,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 5.0,
                        width: 180.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: butColor2,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 10,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: butColor2,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Dr.name",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 175, 175, 175),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 60,
                ),
                Wrap(
                    children: List.generate(
                        subject[i]["catgre"].length,
                        (index) => Card(subject[i]["catgre"][index]['title'],
                            subject[i]["catgre"][index]['image'], context))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Card(String subName, String imgsup, BuildContext c) {
    return Container(
        width: (MediaQuery.of(c).size.width) / 2 - 30,
        height: MediaQuery.of(c).size.width / 1.5 - 20,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
            color: squColor2, borderRadius: BorderRadius.circular(20)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subName,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: Image.asset(imgsup),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                child: Container(
                  width: double.infinity / 2 - 100,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(0)),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        )),
                        // ignore: prefer_const_constructors
                        backgroundColor: MaterialStatePropertyAll(
                          butColor2.withOpacity(0.3),
                        )),
                    onPressed: () {},
                    child: const Text('Open'),
                  ),
                ),
              )
            ]));
  }
}
