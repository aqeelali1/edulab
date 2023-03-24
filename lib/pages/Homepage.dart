import 'package:edulab/Theme.dart';
import 'package:edulab/info.dart';
import 'package:edulab/pages/subject_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

var SearchController;
var subcount;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var SearchField = PhysicalModel(
    borderRadius: BorderRadius.circular(11),
    color: Color.fromRGBO(1, 1, 1, 0),
    elevation: 7,
    clipBehavior: Clip.antiAlias,
    shadowColor: Color.fromARGB(255, 216, 216, 216),
    child: TextFormField(
        controller: SearchController,
        keyboardType: TextInputType.text,
        onSaved: (value) {
          SearchController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          suffixIcon: Icon(
            Icons.search,
            color: primColor,
            size: 35,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          hintText: 'Search',
          hintStyle: GoogleFonts.poppins(),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(11),
          ),
        )),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: Text("Home Page",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, color: ScoColor))),
      backgroundColor: primColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                color: primColor,
                child: Column(children: [
                  Divider(
                    color: Colors.grey[400],
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SearchField,
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                          'Subjects',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: subject.length,
                  itemBuilder: (context, index) => Card(
                      subject[index]['title'], subject[index]['image'], index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Card(String subName, String imgsup, var i) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: ListTile(
          horizontalTitleGap: 20,
          minVerticalPadding: 30,
          visualDensity: VisualDensity(vertical: 4),
          minLeadingWidth: 80,
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                size: 35,
                Iconsax.arrow_right_3,
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
          tileColor: Colors.white,
          title: Text(subName,
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w500)),
          subtitle: Text("Dr.Name"),
          leading: CircleAvatar(
            maxRadius: 35,
            backgroundColor: Colors.blue[200],
            child: Image.asset(imgsup),
          ),
          onLongPress: () => null,
          onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return Spject_page(i);
                  }),
                ),
              )),
        ),
      ),
    );
  }
}
//  Navigator.push(context,
//                           MaterialPageRoute(builder: ((context) {
//                         return Spject_page(i);