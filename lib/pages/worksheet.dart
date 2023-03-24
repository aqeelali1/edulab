import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../Theme.dart';
import '../info.dart';

class WorkSheet extends StatefulWidget {
  const WorkSheet({super.key});

  @override
  State<WorkSheet> createState() => _WorkSheetState();
}

class _WorkSheetState extends State<WorkSheet> {
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
            title: Text("WorkSheet",
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
                  itemCount: WorkSheet_info.length,
                  itemBuilder: (context, index) => Card(
                      WorkSheet_info[index]["subject"],
                      WorkSheet_info[index]["WorkSheet"],
                      WorkSheet_info[index]["Date"]),
                ),
              ),
            ]),
          ),
        ));
  }

  Widget Card(String subName, String Worksheet, List data) {
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
                width: 95,
                height: 53,
                child: Container(
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data[0],
                        maxLines: 1,
                        style: GoogleFonts.poppins(color: primColor),
                      ),
                      Text(
                        data[1],
                        maxLines: 1,
                        style: GoogleFonts.poppins(color: primColor),
                      ),
                    ],
                  )),
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                      color: butColor2,
                      borderRadius: BorderRadius.circular(11)),
                ),
              )
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
          tileColor: Colors.white,
          title: Text(subName,
              style: GoogleFonts.poppins(
                  fontSize: 23, fontWeight: FontWeight.w500)),
          subtitle: Text(Worksheet),
        ),
      ),
    );
  }
}
