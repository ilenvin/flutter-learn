// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    //simulate network request for a username
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'ei';
    });

    //simulate network request to get bio of the username
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      // ignore: avoid_print
      return 'alien, smolbean & bias';
    });

    // ignore: avoid_print
    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    // ignore: avoid_print
    print('hey ei');
  }

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
      body: RaisedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text('counter is $counter')),
    );
  }
}
