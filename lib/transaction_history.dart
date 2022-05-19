import 'package:flutter/material.dart';

class THistory extends StatefulWidget {
  const THistory({Key? key}) : super(key: key);

  @override
  State<THistory> createState() => _THistory();
}

class _THistory extends State<THistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffC6EAFF),
        appBar: AppBar(
          title: const Text("Transaction History"),
        ),
        body: Center(
            child: Column(children: [
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            elevation: 5.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 22.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: const <Widget>[
                        Text(
                          "Bayar Kos 1 Bulan",
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
                          "10 April 2022 \n DANA",
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
                          "Nominal",
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
                          "Rp. 325.000",
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
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            elevation: 5.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 22.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: const <Widget>[
                        Text(
                          "Bayar Kos 1 Bulan",
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
                          "10 April 2022 \n DANA",
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
                          "Nominal",
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
                          "Rp. 325.000",
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
          )
        ])));
  }
}
