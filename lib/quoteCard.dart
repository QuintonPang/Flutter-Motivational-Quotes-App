import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  // const QuoteCard({
  //   Key? key,
  // }) : super(key: key);

  final Quote quote; // variable that does not change
  final Function() delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    quote.text,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                    )
                ),
                SizedBox(height:6.0),
                Text(
                    quote.author,
                    style: TextStyle(
                      fontSize: 14.0,
                      color:Colors.grey[700],
                    )
                ),
                SizedBox(height:8.0),
                FlatButton.icon(
                    onPressed: delete,
                    icon: Icon(Icons.delete),
                    label: Text('Delete'),
                ),
              ]
          ),
        )
    );
  }
}

