import 'package:flutter/material.dart';
import 'package:latihan1/menu_page.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC6EAFF), //oxff, pengganti #
      body: Center(
        // padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Column(
            //   children: [
            Container(
              child: Text(
                'REGISTER',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Image.asset("assets/logo.png"),
              width: 200,
              height: 200,
            ),
            Container(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'First Name',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Last Name',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Container(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 100),
                  child: Text(
                    'Harap Isi Data Diri Dengan Benar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff404CB2)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 8, 39, 97)),
                      child: Text("Back To Login")),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 160,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MenuPage();
                        }));
                      },
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xff404CB2)),
                      child: Text("REGISTER")),
                ),
                // ElevatedButton(onPressed:() {},child: Text("tes")),
                // ElevatedButton(onPressed:() {},child: Text("tes")),
              ],
            )
            // ],
            // )
          ],
        ),
      ),
    );
  }
}
