import 'package:flutter/material.dart';
import 'package:latihan1/database_services.dart';
import 'package:latihan1/google_maps.dart';
import 'package:latihan1/menu_page.dart';
import 'package:latihan1/search.dart';
import 'package:latihan1/chat_view.dart';

class ContohKosan extends StatelessWidget {
  ContohKosan({Key? key}) : super(key: key);
  var review = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 98, 180, 247),
            elevation: 0,
            title: const Text("Contoh Kosan"),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded),
              color: Colors.white,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/contoh-kosan.jpeg',
                  width: 500,
                  height: 300,
                  fit: BoxFit.fitHeight,
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 5.0),
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 22.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: const <Widget>[
                              Text(
                                "Nama Kos",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Kosan Bapak Ujang",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color.fromARGB(255, 73, 170, 214)),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: const <Widget>[
                              Text(
                                "Status",
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Tersedia",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromARGB(255, 96, 214, 73),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis dui in neque pharetra sagittis. Phasellus dolor dui, imperdiet eget velit sit amet, tempus congue ipsum. Donec ac blandit nunc, vel fringilla purus. Quisque mattis massa nec libero egestas, in tempor neque hendrerit. Sed a sapien placerat, sagittis ligula nec, tincidunt mauris. Fusce sed volutpat ex. Integer semper sem nunc, non rutrum eros pulvinar sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet augue lacus. Donec varius tempor scelerisque.''',
                    textAlign: TextAlign.justify,
                  ),
                ),
                TextField(
                  onChanged: (v) {
                    review = v;
                  },
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'tulis review kamu',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  child: ElevatedButton(
                      onPressed: () async {
                        DatabaseServices3.createOrUpdateReview("1",
                            review: review);
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 4, 109, 229)),
                      child: const Text("Masukkan Review")),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const GMaps();
                    }));
                  },
                  child: const Text("Cek Lokasi"),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              child: const Icon(
                Icons.phone,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatView()),
                );
              }),
        ));
  }
}
