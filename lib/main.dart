// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        title: const Text('Ei app'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: Image.asset('assets/original.jpg'),
            flex: 3,
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.deepPurple[100],
              child: const Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.deepOrange[100],
              child: const Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.cyan[100],
              child: const Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        backgroundColor: Colors.deepPurple[100],
      ),
    );
  }
}
