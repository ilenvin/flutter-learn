// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({
    Key? key,
    required this.quote,
    required this.delete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: const TextStyle(fontSize: 14.0, color: Colors.brown),
            ),
            const SizedBox(height: 8.0),
            FlatButton.icon(
              onPressed: () => delete(),
              label: const Text('delete quote'),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
