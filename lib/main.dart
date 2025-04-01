import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Aufgabe 1"),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 56, 12, 0),
            child: Row(
              children: [
                Text(
                  "Hello App Akademie!",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  child: Center(
                      child: FilledButton(onPressed: () {}, child: Text("A"))),
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Center(
                      child: FilledButton(onPressed: () {}, child: Text("B"))),
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Center(
                      child: FilledButton(onPressed: () {}, child: Text("C"))),
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Icon(
                Icons.face,
                size: 48,
              ),
              Icon(
                Icons.face,
                size: 48,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          )
        ]),
      ),
    );
  }
}
