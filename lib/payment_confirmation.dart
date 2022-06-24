import 'package:flutter/material.dart';
import 'package:latihan1/home.dart';
import 'package:latihan1/menu_page.dart';
import 'package:latihan1/payment.dart';
import 'package:latihan1/top_up.dart';

class PaymentConfirm extends StatefulWidget {
  const PaymentConfirm({Key? key}) : super(key: key);

  @override
  State<PaymentConfirm> createState() => _PaymentConfirm();
}

class _PaymentConfirm extends State<PaymentConfirm> {
  String data = "PAYMENT";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffC6EAFF),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                width: 186,
                height: 90,
                child: const Text(
                  "Metode Pembayaran: \n\n INDOMARET",
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
                  "Batas Waktu Pembayaran: \n\n 24 Jam",
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
                title: Text("Kode Pembayaran"),
                trailing: Text("SHJSBJB24KDF835SDFNKS")),
          ),
          const Card(
            child: ListTile(
                tileColor: Color.fromARGB(255, 223, 242, 255),
                title: Text("Total Tagihan:"),
                trailing: Text("Rp. 325.000,-")),
          ),
          Card(
              child: Text(
                  "Cara Pembayaran:\n1.Pergi ke kasir Indomart\n2.Tunjukan kode pembayaran yang tertera diatas\n3.Transaksi akan berlangsung\n4.Setelah transaksi, kamu akan mendapat struk \n5.Dan saldo E-wallet kamu akan terisi otomatis")),
          SizedBox(
            width: 160,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MenuPage();
                  }));
                },
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xff404CB2)),
                child: const Text("Konfirmasi")),
          ),
        ],
      ),
    );
  }
}
