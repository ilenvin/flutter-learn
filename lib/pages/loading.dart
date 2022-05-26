import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    var res = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    var jsonResponse = convert.jsonDecode(res.body) as Map<String, dynamic>;
    // ignore: avoid_print
    print(jsonResponse);
    // ignore: avoid_print
    print(jsonResponse['title']);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('loading screen'),
    );
  }
}
