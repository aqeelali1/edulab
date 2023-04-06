import 'package:edulab/Theme.dart';
import 'package:edulab/info.dart';
import 'package:edulab/login/Test.dart';
import 'package:edulab/login/login.dart';
import 'package:edulab/login/signUp.dart';
import 'package:edulab/pages/Homepage.dart';
import 'package:edulab/tapbar.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset(
                logo,
                height: 350,
                width: 350,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(ScoColor),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
