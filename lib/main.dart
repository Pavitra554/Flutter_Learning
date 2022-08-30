import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.indigo[700],
      ),
      body: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.normal,
              fontFamily: 'Roboto',
              color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.indigo[700],
        child: const Text('Click'),
      ),
    );
  }
}
