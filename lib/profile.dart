import 'package:flutter/material.dart';
import 'package:latihan1/menu_page.dart';

//belum dipake
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Profile"),
            centerTitle: true,
            elevation: 0,
          ),
          body: ListView(shrinkWrap: true, children: [
            const SizedBox(height: 10),
            DataTable(
              columns: const [
                DataColumn(label: Text('Nama')),
                DataColumn(label: Text('Email')),
                DataColumn(label: Text('Nomor Telepon'))
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('Si Paling Ngekos')),
                  DataCell(Text('123@gmail.com')),
                  DataCell(Text('081333444555'))
                ])
              ],
            ),
          ]),
        ));
  }
}
