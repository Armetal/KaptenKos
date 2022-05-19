import 'package:flutter/material.dart';
import 'package:latihan1/change_password.dart';
import 'package:latihan1/main.dart';
import 'package:latihan1/menu_page.dart';
import 'package:latihan1/profile.dart';
import 'package:latihan1/singin.dart';

class Setting1 extends StatefulWidget {
  const Setting1({Key? key}) : super(key: key);

  @override
  State<Setting1> createState() => SettingInState();
}

class SettingInState extends State<Setting1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC6EAFF),
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 22, 165, 247),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(2.0)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ChangePw();
                }));
              },
              child: const Text("Change Password"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyApp();
                }));
              },
              child: const Text("Logout"),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyApp();
                }));
              },
              child: const Text("Delete Account"),
            ),
          ],
        ),
      ),
    );
  }
}
