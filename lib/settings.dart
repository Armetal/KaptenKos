import 'package:flutter/material.dart';
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
          color: Colors.black,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return SingIn();
            }));
          },
        ),
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 22, 247, 123),
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(
                    color: Colors.black,
                  )),
              width: 250,
              height: 35,
              child: const Center(
                child: Text(
                  'Change Password',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(
                    color: Colors.black,
                  )),
              width: 250,
              height: 35,
              child: const Center(
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.black,
                  )),
              width: 250,
              height: 35,
              child: const Center(
                child: Text(
                  'Delete Account',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
