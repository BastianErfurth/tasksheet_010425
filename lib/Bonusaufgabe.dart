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
            child: HelloAppAk(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 32, 12, 0),
            child: HelloAppAk(),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ABC(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ABC(),
          ),
          SizedBox(
            height: 16,
          ),
          IconRow(),
          SizedBox(height: 36),
          IconRow(),
        ]),
      ),
    );
  }
}

class IconRow extends StatelessWidget {
  const IconRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    );
  }
}

class ABC extends StatelessWidget {
  const ABC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
          child:
              Center(child: FilledButton(onPressed: () {}, child: Text("A"))),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          color: Colors.green,
          height: 100,
          width: 100,
          child:
              Center(child: FilledButton(onPressed: () {}, child: Text("B"))),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          child:
              Center(child: FilledButton(onPressed: () {}, child: Text("C"))),
        ),
      ],
    );
  }
}

class HelloAppAk extends StatelessWidget {
  const HelloAppAk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }
}
