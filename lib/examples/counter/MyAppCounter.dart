import 'package:flutter/material.dart';
import 'home_page.dart';

class MyAppCounter extends StatelessWidget {
  const MyAppCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi primera app",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomePage(),
    );
  }
}