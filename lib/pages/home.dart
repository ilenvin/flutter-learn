// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:myapp/services/world_time.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Object? data = ModalRoute.of(context)!.settings.arguments;
    // ignore: avoid_print
    print(data);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: [
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: const Icon(Icons.edit_location),
                label: const Text('Edit Location'),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    //To Do ****
                    data['location'],
                    style: const TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
