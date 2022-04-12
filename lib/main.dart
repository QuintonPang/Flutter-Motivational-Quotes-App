import 'package:flutter/material.dart';
import 'quote.dart';
import 'quoteCard.dart';

void main() {
  runApp(MaterialApp(
    // home: Text('Hello World!'), // specifies what is on home screen
    home: QuoteList(),
  ));
}

// changing data
class QuoteList extends StatefulWidget {
  // const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  // List<String> quotes = [
  //   'Love yourself',
  //   'Never give up',
  //   'It\'s not who you are underneath, but what you do that defines you',
  // ];

  List<Quote>  quotes = [
    Quote(author:'Guy 1', text:'Love yourself'),
    Quote(author:'Guy 2', text:'Never give up'),
    Quote(author:'Guy 3', text:'It\'s not who you are underneath, but what you do that defines you'),
  ];

  // Widget quoteTemplate(Quote quote){
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList() // returns a list of widgets
            // children: quotes.map((quote)=>quoteTemplate(quote)).toList()
            children: quotes.map((quote)=>QuoteCard(
                quote: quote,
                delete: (){
                  setState(() {
                    quotes.remove(quote);
                  });
                }
            )).toList(),
        ),
      ),
    );
  }
}

