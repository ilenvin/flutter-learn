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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: const Text('Hello ei'),
          ),
          Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.deepPurple[100],
            child: const Text('Hello ei 2'),
          ),
          Container(
            padding: const EdgeInsets.all(40.0),
            color: Colors.green[100],
            child: const Text('Hello ei 3'),
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
