import 'package:flutter/material.dart';
import 'package:latihan1/contohKosan.dart';
import 'package:latihan1/google_maps.dart';
import 'package:latihan1/menu_page.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffC6EAFF),
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
            SizedBox(
              height: 50,
              width: 10,
              child: Card(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: const EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 245, 245, 245))),
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                tileColor: const Color.fromARGB(255, 186, 221, 241),
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
                tileColor: const Color.fromARGB(255, 186, 221, 241),
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
                tileColor: const Color.fromARGB(255, 186, 221, 241),
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
                tileColor: const Color.fromARGB(255, 186, 221, 241),
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
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(
              Icons.location_pin,
              color: Colors.white,
            ),
            backgroundColor: Colors.red,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GMaps();
              }));
            }),
      ),
    );
  }
}
