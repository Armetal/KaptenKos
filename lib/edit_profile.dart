import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:latihan1/database_services.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  @override
  var nama = ' ';
  var nomer_hp = ' ';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC6EAFF),
      appBar: AppBar(
        title: const Text("Edit Profile"),
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
                    nama = v;
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
                    nomer_hp = v;
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
                    DatabaseServices.createOrUpdateProfile("1",
                        nama: nama, nomer_hp: nomer_hp);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 4, 109, 229)),
                  child: const Text("Edit")),
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
                        await DatabaseServices.getProfile("1");
                    print(snapshot['nama']);
                    print(snapshot['nomer_hp']);
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
