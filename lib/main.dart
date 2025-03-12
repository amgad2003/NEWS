import 'package:flutter/material.dart';
import 'package:news_cloud/Views/Home_Views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}