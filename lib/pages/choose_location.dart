// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Choose a location'),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
