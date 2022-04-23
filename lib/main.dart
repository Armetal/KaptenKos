import 'package:flutter/material.dart';
import 'package:latihan1/pembukaan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KaptenKos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: pembukaan(),
    );
  }
}
