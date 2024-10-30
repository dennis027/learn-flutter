import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes  = [
    Quote(text:'Be yourself, everyone else is taken ',   author:'dennis'),
    Quote(text:'I have nothing else to declare except food', author:'macharia',),
    Quote(text:'The trust is hardly broken', author:'kimani')


  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
            'Awesome Quote',
            style: TextStyle(
              color: Colors.white
            ) ,
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(), // Provides a direct list of widgets
      ),
    );
  }
}

