import 'package:flutter/material.dart';

class AccVerif extends StatefulWidget {
  const AccVerif({Key? key}) : super(key: key);

  @override
  State<AccVerif> createState() => _AccVerif();
}

class _AccVerif extends State<AccVerif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC6EAFF),
      appBar: AppBar(
        title: const Text("Account Verification"),
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
              child: const Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'email',
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
                      hintText: 'phone number',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 4, 109, 229)),
                  child: const Text("Verification")),
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
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
