import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself, everyone else is already taken'),
    Quote(author: 'Emily Dickinson', text: 'That it will never come again is what makes life so sweet'),
    Quote(author: 'George Eliot', text: 'It is never too late to be what you might have been.'),
    Quote(author: 'Haruki Murakami', text: 'Pain is inevitable. Suffering is optional')
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quotes.map( (quote) => QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              }
            )).toList(),
          ),
    );
  }
}




