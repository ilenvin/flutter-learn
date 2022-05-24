// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(text: 'Whatever the world think, stay true', author: 'Smolbean Ei'),
    // 'Be yourself; everyone else is already taken',
    // 'I have nothing to declare except my sarrow',
    // 'The truth is rarely pure and never simple',
  ];

  // Widget quoteTemplate(quote) {
  //   return const QuoteCard();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Ei Quote',
        ),
        backgroundColor: Colors.brown[200],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                ))
            .toList(),
      ),
    );
  }
}
