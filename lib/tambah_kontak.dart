import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:latihan1/database_services.dart';

class TambahContact extends StatefulWidget {
  const TambahContact({Key? key}) : super(key: key);

  @override
  State<TambahContact> createState() => _TambahContact();
}

class _TambahContact extends State<TambahContact> {
  @override
  var nama2 = ' ';
  var nomer_hp2 = ' ';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC6EAFF),
      appBar: AppBar(
        title: const Text("Tambah Contact"),
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
                    nama2 = v;
                  },
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'nama',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                    nomer_hp2 = v;
                  },
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'nomer telepon',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                  onPressed: () async {
                    DatabaseServices2.createOrUpdateContact("1",
                        nama2: nama2, nomer_hp2: nomer_hp2);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 4, 109, 229)),
                  child: const Text("Tambah")),
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
                        await DatabaseServices2.getContact("1");
                    print(snapshot['nama2']);
                    print(snapshot['nomer_hp2']);
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
