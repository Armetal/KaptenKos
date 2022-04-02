import 'package:flutter/material.dart';
import 'package:latihan1/settings.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
        ),
        body: Container(
          width: 100,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Setting1();
                }));
              },
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 5, 92, 92)),
              child: const Icon(Icons.settings)),
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.all(5.0),
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 0, 121, 158),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payment',
            backgroundColor: Color.fromARGB(255, 2, 0, 134),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 0, 121, 158),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Message',
            backgroundColor: Color.fromARGB(255, 2, 0, 134),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Color.fromARGB(255, 2, 0, 134),
          ),
        ]));
  }
}
