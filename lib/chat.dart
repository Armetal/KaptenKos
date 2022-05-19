import 'package:flutter/material.dart';
import 'package:latihan1/chat_view.dart';
import 'package:latihan1/menu_page.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Chat"),
            centerTitle: true,
          ),
          backgroundColor: const Color(0xffC6EAFF),
          body: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  tileColor: const Color.fromARGB(255, 223, 242, 255),
                  title: const Text("Bapak Kos"),
                  leading: Image.asset(
                    'assets/person.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fitHeight,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatView()),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
