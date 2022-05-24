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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('hello ei'),
          FlatButton(
            onPressed: () {},
            color: Colors.amber[100],
            child: const Text('click me'),
          ),
          Container(
            color: Colors.cyan,
            padding: const EdgeInsets.all(30.0),
            child: const Text('inside container'),
          ),
        ],
      ),
      // Text(
      //   'hello ei',
      //   style: TextStyle(
      //     fontSize: 20.0,
      //     fontWeight: FontWeight.bold,
      //     letterSpacing: 2.0,
      //     color: Colors.grey[600],
      //     fontFamily: 'Poppins',
      //   ),
      // ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('click'),
        backgroundColor: Colors.deepPurple[100],
      ),
    );
  }
}
