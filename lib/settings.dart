import 'package:flutter/material.dart';

class Setting1 extends StatefulWidget {
  const Setting1({Key? key}) : super(key: key);

  @override
  State<Setting1> createState() => SettingInState();
}

class SettingInState extends State<Setting1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC6EAFF),
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 22, 247, 123),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
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
              child: Center(
                child: Text(
                  'Change Password',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
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
              child: Center(
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
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
              child: Center(
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
