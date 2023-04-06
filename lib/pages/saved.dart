import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../Theme.dart';
import '../info.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({super.key});

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primColor,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: [
              Icon(Icons.notifications, size: 35),
              SizedBox(
                width: 10,
              ),
            ],
            actionsIconTheme: IconThemeData(color: butColor2),
            backgroundColor: primColor,
            elevation: 0,
            title: Text("Saved",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, color: ScoColor))),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              Container(
                color: primColor,
                child: Column(
                  children: [
                    Divider(
                      color: Colors.grey[400],
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: savelist.length,
                  itemBuilder: (context, index) => Card(
                      savelist[index]['title'],
                      savelist[index]['image'],
                      index),
                ),
              ),
            ]),
          ),
        ));
  }

  Widget Card(String subName, String imgsup, var i) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: ListTile(
          horizontalTitleGap: 20,
          minVerticalPadding: 20,
          visualDensity: VisualDensity(vertical: 4),
          minLeadingWidth: 100,
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 85,
                height: 43,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      )),
                      // ignore: prefer_const_constructors
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.grey[300],
                      )),
                  onPressed: (() => null),
                  child: Text('Open',
                      style: GoogleFonts.poppins(
                          color: butColor2, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
          tileColor: Colors.white,
          title: Text(subName,
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w500)),
          subtitle: Text("Dr.Name"),
          leading: CircleAvatar(
            maxRadius: 35,
            backgroundColor: Colors.blue[200],
            child: Image.asset(imgsup),
          ),
        ),
      ),
    );
  }
}
