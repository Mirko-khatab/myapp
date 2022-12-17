import 'dart:async';

import 'package:myapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class solash extends StatefulWidget {
  const solash({super.key});

  @override
  State<solash> createState() => _solashState();
}

class _solashState extends State<solash> {
  @override
  void initState() {
    super.initState();
    //splash screen timer 3 second and go to login page if not login and go to home page if login before
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/lod.png',
                fit: BoxFit.cover,
              ),
              Text(
                "Shoping",
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 42,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              //splash screen circular progress indicator
              CircularProgressIndicator(
                backgroundColor: Colors.purple[700],
                valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.purple.shade700),
              ),
            ],
          ),
        ));
  }
}
