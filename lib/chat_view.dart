import 'package:flutter/material.dart';
import 'package:latihan1/menu_page.dart';

//belum dipake
class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bapak Kos"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
          color: Colors.white,
        ),
      ),
      backgroundColor: Color(0xffC6EAFF),
    );
  }
}
