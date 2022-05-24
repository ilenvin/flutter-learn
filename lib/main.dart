// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: EiCard()));
}

class EiCard extends StatefulWidget {
  const EiCard({Key? key}) : super(key: key);

  @override
  State<EiCard> createState() => _EiCardState();
}

class _EiCardState extends State<EiCard> {
  int eiLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: const Text(
          'Ei ID Card',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown[200],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            eiLevel += 1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.brown[400],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('../assets/xielian.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.brown[200],
            ),
            const Text(
              'NAME',
              style: TextStyle(color: Colors.brown, letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Ei',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'CURRENT EI LEVEL',
              style: TextStyle(color: Colors.brown, letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$eiLevel',
              style: const TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.brown,
                ),
                const SizedBox(width: 10.0),
                const Text(
                  'smolbean.ei@gmail.com',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 18.0, letterSpacing: 1.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
