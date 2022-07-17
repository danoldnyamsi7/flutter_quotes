import 'package:flutter/material.dart';
import './quotes.dart';
import './quotes_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteLists(),
  ));
}

class QuoteLists extends StatefulWidget {
  @override
  State<QuoteLists> createState() => _QuoteListsState();
}

class _QuoteListsState extends State<QuoteLists> {
  List<Quote> quotes = [
    Quote(text: 'Become a proficient mobile developper ', author: 'Danold N.'),
    Quote(
        text: 'Become a proficient mobile developper 2 ', author: 'Danold N.'),
    Quote(text: 'Become a proficient mobile developper 3', author: 'Danold N.'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote, delete: (){
          setState(() {
            quotes.remove(quote);
          });
        },)).toList(),
      ),
    );
  }
}

