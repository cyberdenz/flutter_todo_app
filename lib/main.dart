// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_todo_app/pages/home_page.dart';
import 'package:hive_flutter/adapters.dart';


void main() async{
  // init the hive
  await Hive.initFlutter();
  // open a box
  var box = await Hive.openBox("mybox");
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.yellow,
        ),
      ),
        
    );
  }
}