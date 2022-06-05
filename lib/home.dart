import 'package:flutter/material.dart';
import 'package:latihan1/menu_page.dart';
import 'package:latihan1/profile.dart';
import 'package:latihan1/register_page.dart';

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
                margin: EdgeInsets.all(5),
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
              Column(
                children: [
                  Image.asset(
                    'assets/promo.png',
                    width: 500,
                    height: 155,
                    fit: BoxFit.fitWidth,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 186,
                    height: 100,
                    child: const Text(
                      "E-cash \n\n Rp. 100.000,-",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    color: Color.fromARGB(255, 223, 242, 255),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 186,
                    height: 100,
                    child: const Text(
                      "Coin \n\n 500 C",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    color: Color.fromARGB(255, 223, 242, 255),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 240,
                height: 100,
                child: const Text(
                  "Tagihan anda Rp. 325.000,-",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                color: Color.fromARGB(255, 223, 242, 255),
              ),
            ],
          )),
    );
  }
}
