import 'package:flutter/material.dart';
import 'package:latihan1/singin.dart';

class pembukaan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffC6EAFF),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Text(
              'KaptenKos',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Image.asset("assets/logo.png"),
            width: 300,
            height: 300,
          ),
          Container(
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return SingIn();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 5, 92, 92)),
                child: Text("Next")),
            padding: EdgeInsets.all(5.0),
          )
        ])));
  }
}
