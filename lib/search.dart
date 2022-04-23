import 'package:flutter/material.dart';
import 'package:latihan1/contohKosan.dart';
import 'package:latihan1/menu_page.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Daftar Kosan"),
            centerTitle: true,
            elevation: 0,
          ),
          body: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  title: const Text("Contoh Kosan"),
                  leading: Image.asset(
                    'assets/contoh-kosan.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitWidth,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContohKosan()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Contoh Kosan"),
                  leading: Image.asset(
                    'assets/contoh-kosan.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitWidth,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContohKosan()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Contoh Kosan"),
                  leading: Image.asset(
                    'assets/contoh-kosan.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitWidth,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContohKosan()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Contoh Kosan"),
                  leading: Image.asset(
                    'assets/contoh-kosan.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitWidth,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContohKosan()),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
