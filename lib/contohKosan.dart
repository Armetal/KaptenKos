import 'package:flutter/material.dart';
import 'package:latihan1/menu_page.dart';
import 'package:latihan1/search.dart';

class ContohKosan extends StatelessWidget {
  const ContohKosan({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 137, 192, 238),
            elevation: 0,
            title: const Text("Contoh Kosan"),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded),
              color: Colors.white,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/contoh-kosan.jpeg',
                  width: 500,
                  height: 500,
                  fit: BoxFit.fitWidth,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '''Contoh Kosan''',
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
