import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const TeamSyncApp());
}

class TeamSyncApp extends StatelessWidget {
  const TeamSyncApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeamSync',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial',
      ),
      home: const HomePage(),
    );
  }
}
