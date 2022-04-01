import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  const SingIn({ Key? key }) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Column(
              //   children: [
                  Container(
                    child: Text('LOGIN'),
                    ),
                  Container(
                    child: Image.asset("assets/logo.png"),
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'email',
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'password',
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Forget Password'),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    ElevatedButton(onPressed:() {},child: Text("tes")),
                    ElevatedButton(onPressed:() {},child: Text("tes")),
                  ],)
                // ],
              // )
            ],
          ),
      ),
    );
  }
}