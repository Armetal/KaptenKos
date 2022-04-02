import 'package:flutter/material.dart';
import 'package:latihan1/settings.dart';

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
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return Setting1();
              }));
            },
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 5, 92, 92)),
            child: Text("Setting")),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }
}
