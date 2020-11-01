import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'The only joy in the world is to begin.', author: 'Beyonce'),
    Quote(
        text: 'What you do not want done to yourself, do not do to others.',
        author: "Lupita Nyongo"),
    Quote(
        text: 'Happiness is not something ready-made.',
        author: 'Michelle Obama')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((e) => QuoteCard(
                  quote: e,
                ))
            .toList(),
      ),
    );
  }
}
