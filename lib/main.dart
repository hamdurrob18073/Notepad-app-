import 'package:flutter/material.dart';
import 'package:todo/logic.dart';

import 'package:provider/provider.dart';
import 'package:todo/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// C5817D


void main() {
  runApp(  ChangeNotifierProvider(create: (context) => data(),
  child: MyApp()));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
    

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360,690),
      builder: (context,child) { 
        return MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.grey,
        ),
        home: splash(),
      );
       },
       
    );
  }
}

