import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String url = "https://jsonplaceholder.typicode.com/photos";

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

var d;
getData() async {
  dynamic Data = await http.get(Uri.parse(url));
  if (Data.statusCode == 200) {
    Data = json.decode(Data.body);
    return Data;
  } else {
    throw Exception("Error");
  }
}

x() async {
  d = await getData();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Text(d[1]["Title"]), Image.network(d[1]['url'])]),
    );
  }
}
