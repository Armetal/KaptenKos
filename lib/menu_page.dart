import 'package:flutter/material.dart';
import 'package:latihan1/settings.dart';
import 'package:latihan1/statefull.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Container(
        width: 100,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CobaCount();
              }));
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 5, 92, 92)),
            child: Icon(Icons.settings)),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }
}
