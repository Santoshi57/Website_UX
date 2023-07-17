import 'package:flutter/material.dart';
import 'package:website_1/pages/home.dart';
import 'package:website_1/utils/colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'',
      theme: ThemeData(
        fontFamily: 'MindSiliguri',
        brightness: Brightness.light,
        primaryColor: AppColors.primary
      ),
      home: const Home(),
      // home: const HomePage(),
    );
  }
}








