import 'package:flutter/material.dart';
import 'package:latihan1/register_page.dart';
import 'package:latihan1/menu_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  var ctrlUsername = TextEditingController();
  var ctrlPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC6EAFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                'LOGIN',
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
                controller: ctrlUsername,
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
                controller: ctrlPassword,
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
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff404CB2)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 160,
                  child: ElevatedButton(
                      onPressed: () {
                        _doLogin();
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 0, 116, 35)),
                      child: const Text("LOGIN")),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 160,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const RegisterPage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff404CB2)),
                      child: const Text("REGISTER")),
                ),
              ],
            )
            // ],
            // )
          ],
        ),
      ),
    );
  }

  _doLogin() async {
    try {
      setState(() {});
      var email = ctrlUsername.text;
      var pass = ctrlPassword.text;
      print('sedang login...');
      var res = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );

      print('hasil login:');
      print(res);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const MenuPage();
      }));
    } catch (ex) {
      print('exception login');
      print(ex.runtimeType);
      if (ex is FirebaseAuthException) {
        print(ex);
        print(ex.message);
        setState(() {});
      }
    }
  }
}
