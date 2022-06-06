import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:latihan1/database_services.dart';

class KritikSaran extends StatefulWidget {
  KritikSaran({Key? key}) : super(key: key);

  @override
  State<KritikSaran> createState() => _KritikSaran();
}

class _KritikSaran extends State<KritikSaran> {
  @override
  var kritik_saran = ' ';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC6EAFF),
      appBar: AppBar(
        title: const Text("Kritik dan Saran"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              width: 250,
              height: 35,
              child: Center(
                child: TextField(
                  onChanged: (v) {
                    kritik_saran = v;
                  },
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'ketik kritik/saranmu disini',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                  onPressed: () async {
                    DatabaseServices4.createOrUpdateKritikSaran("1",
                        kritik_saran: kritik_saran);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 4, 109, 229)),
                  child: const Text("Input")),
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    DocumentSnapshot snapshot =
                        await DatabaseServices4.getKritikSaran("1");
                    print(snapshot['kritik_saran']);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 187, 31)),
                  child: const Text("Save")),
            ),
          ],
        ),
      ),
    );
  }
}
