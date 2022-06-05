import 'package:flutter/material.dart';
import 'package:latihan1/menu_page.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String data = "PAYMENT";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Telah diklik");
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("PAYMENT"),
                  content: Text("Apakah anda yakin melakukan pembayaran ?"),
                  actions: [
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("No"),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          data = "SUKSES";
                        });
                      },
                      child: Text("Yes"),
                    ),
                  ],
                );
              });
        },
        child: Icon(Icons.payment),
      ),
      backgroundColor: const Color(0xffC6EAFF),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  "Tagihan Anda",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
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
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                width: 186,
                height: 90,
                child: const Text(
                  "Periode Tagihan: \n\n Maret 2022",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                color: Color.fromARGB(255, 223, 242, 255),
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 186,
                height: 90,
                child: const Text(
                  "Batas Waktu Pembayaran: \n\n 15 Maret 2022",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                color: Color.fromARGB(255, 223, 242, 255),
              ),
            ],
          ),
          const Card(
            child: ListTile(
                tileColor: Color.fromARGB(255, 223, 242, 255),
                title: Text("Bayar Bulanan Kos"),
                trailing: Text("Rp. 325.000,-")),
          ),
          const Card(
            child: ListTile(
                tileColor: Color.fromARGB(255, 223, 242, 255),
                title: Text("Kerusakan"),
                trailing: Text("Rp. 0,-")),
          ),
          const Card(
            child: ListTile(
                tileColor: Color.fromARGB(255, 223, 242, 255),
                title: Text("PPN"),
                trailing: Text("Rp. 0,-")),
          ),
          const Card(
            child: ListTile(
                tileColor: Color.fromARGB(255, 223, 242, 255),
                title: Text("Total Tagihan:"),
                trailing: Text("Rp. 325.000,-")),
          ),
        ],
      ),
    );
  }
}
