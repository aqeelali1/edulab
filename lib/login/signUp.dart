import 'dart:developer';

import 'package:edulab/Theme.dart';
import 'package:edulab/info.dart';
import 'package:edulab/tapbar.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();
final confirmPasswordController = TextEditingController();

class _RegisterState extends State<Register> {
  final emailField = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[250],
        prefixIcon: const Icon(Icons.mail_outline),
        contentPadding: const EdgeInsets.all(25),
        label: const Text(
          "Email Address",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 159, 159, 159)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ));
  final PasswordField = TextFormField(
      controller: passwordController,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[250],
        prefixIcon: const Icon(Icons.password_outlined),
        contentPadding: const EdgeInsets.all(25),
        label: const Text(
          "Password",
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 159, 159, 159)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ));
  final confirmPasswordField = TextFormField(
      controller: confirmPasswordController,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (value) {
        confirmPasswordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[250],
        prefixIcon: const Icon(Icons.password_outlined),
        contentPadding: const EdgeInsets.all(25),
        label: const Text(
          "Confirm Password",
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 159, 159, 159)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Image.asset(
                      logo,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                    child: Text(
                  'Create an account',
                  style: GoogleFonts.poppins(
                      color: butColor2,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 5.0,
                        width: 170.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: squColor3,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 10,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: squColor3,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                emailField,
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                PasswordField,
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                confirmPasswordField,
                SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 1,
                  borderRadius: BorderRadius.circular(18),
                  color: squColor3,
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(15),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyNevBar()));
                    },
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Or login with ",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/image/google.png",
                              ),
                              width: MediaQuery.of(context).size.height * 0.09,
                              height: MediaQuery.of(context).size.height * 0.08,
                              decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                            borderRadius: BorderRadius.circular(25),
                            onTap: () => null,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Don't have an account!?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text(
                        " Login",
                        style: TextStyle(
                            color: squColor3,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
