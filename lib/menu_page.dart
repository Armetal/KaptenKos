import 'package:flutter/material.dart';
import 'package:latihan1/chat.dart';
import 'package:latihan1/home.dart';
import 'package:latihan1/payment.dart';
import 'package:latihan1/profile.dart';
import 'package:latihan1/search.dart';
import 'package:latihan1/settings.dart';
import 'package:latihan1/statefull.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Search(),
    Chat(),
    Payment(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
