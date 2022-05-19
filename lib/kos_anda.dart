import 'package:flutter/material.dart';
import 'package:latihan1/menu_page.dart';
import 'package:latihan1/search.dart';

class KosAnda extends StatelessWidget {
  const KosAnda({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 98, 180, 247),
            elevation: 0,
            title: const Text("Kos Anda"),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded),
              color: Colors.white,
            ),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(2),
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
                                "Anda Huni",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromARGB(255, 73, 170, 214),
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
                )
              ],
            ),
          ),
        ));
  }
}
