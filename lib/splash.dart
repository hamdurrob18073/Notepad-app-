import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class splash extends StatefulWidget {
  const splash({super.key});
 

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
   @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => TodoApp(),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212227),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
        Lottie.asset("lotti/2.json"),
        Text("Your Note",style: TextStyle(color: Color(0xffC5817D),fontSize: 35.sp,fontWeight: FontWeight.bold),)

      ]),
    );
  }
}