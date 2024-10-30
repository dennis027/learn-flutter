import 'package:flutter/material.dart';
import 'quote.dart';
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
    Quote(text:'Be yourself, everyone else is taken too',   author:'dennis'),
    Quote(text:'I have nothing else to declare except food', author:'macharia',),
    Quote(text:'The trust is hardly broken', author:'kimani')


  ];

 Widget QuoteTemplate(quote) {
   return Card (
     margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
     child: Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Text(
               quote.text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[400]
                ),

           ),
           SizedBox(height: 6),

           Text(
             quote.author,
             style: TextStyle(
               fontSize: 14,
               color: Colors.grey[800]
             ),
           )

         ],
       ),
     ),
   );
 }


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
        children: quotes.map((quote) => QuoteTemplate(quote)).toList(), // Provides a direct list of widgets
      ),
    );
  }
}
