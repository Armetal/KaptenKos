import 'package:flutter/material.dart';
import 'package:latihan1/pembukaan.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
