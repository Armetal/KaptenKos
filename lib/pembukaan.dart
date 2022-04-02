import 'package:flutter/material.dart';
import 'package:latihan1/singin.dart';

class pembukaan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffC6EAFF),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'KaptenKos',
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          SizedBox(
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
                    return const SingIn();
                  }));
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 5, 92, 92)),
                child: const Text("Next")),
            padding: const EdgeInsets.all(5.0),
          )
        ])));
  }
}
