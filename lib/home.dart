import 'package:flutter/material.dart';
import 'package:latihan1/menu_page.dart';
import 'package:latihan1/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Menu"),
            centerTitle: true,
          ),
          backgroundColor: const Color(0xffC6EAFF),
          body: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  tileColor: const Color(0xffC6EAFF),
                  title: const Text("Nama Pengekos"),
                  leading: Image.asset(
                    'assets/person.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitHeight,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                ),
              ),
              Column(children: [
                Image.asset(
                  'assets/promo.png',
                  width: 500,
                  height: 155,
                  fit: BoxFit.fitWidth,
                )
              ]),
            ],
          )),
    );
  }
}
