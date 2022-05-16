import 'package:flutter/material.dart';
import 'package:latihan1/menu_page.dart';

//belum dipake
class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffC6EAFF),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                "Tagihan Anda",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Segera selesaikan pembayaran tagihan Anda dan usahakan tetap menggunakan bagian uang kost benar-benar pada tempatnya, yakni untuk melunasi tagihan bulanan kost',
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
