import 'package:flutter/material.dart';
import 'package:latihan1/contohKosan.dart';
import 'package:latihan1/payment.dart';

class TopUp extends StatelessWidget {
  const TopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 98, 180, 247),
        elevation: 0,
        title: const Text("Kapten Kos"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
          color: Colors.white,
        ),
      ),
      body: ListView(children: [
        Card(
          child: ListTile(
            tileColor: const Color.fromARGB(255, 186, 221, 241),
            title: const Text("TRANSFER BANK"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Payment()),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            tileColor: const Color.fromARGB(255, 186, 221, 241),
            title: const Text("INDOMARET"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Payment()),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            tileColor: const Color.fromARGB(255, 186, 221, 241),
            title: const Text("ALFAMART"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Payment()),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            tileColor: const Color.fromARGB(255, 186, 221, 241),
            title: const Text("DANA"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Payment()),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            tileColor: const Color.fromARGB(255, 186, 221, 241),
            title: const Text("SCAN QR CODE"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Payment()),
              );
            },
          ),
        ),
      ]),
    ));
  }
}
