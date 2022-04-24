import 'package:flutter/material.dart';

class ChangePw extends StatefulWidget {
  const ChangePw({Key? key}) : super(key: key);

  @override
  State<ChangePw> createState() => _ChangePwState();
}

class _ChangePwState extends State<ChangePw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC6EAFF),
      appBar: AppBar(
        title: Text("Change Password"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              width: 250,
              height: 35,
              child: const Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Old Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
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
              child: const Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'New Password',
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
              child: const Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 4, 229, 45)),
                  child: const Text("Save")),
            ),
          ],
        ),
      ),
    );
  }
}
