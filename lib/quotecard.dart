import 'package:flutter/material.dart';

//Custom class
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final VoidCallback delete;
  const QuoteCard({
    Key? key,
    required this.quote,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
      elevation: 5,
      shadowColor: Colors.black,
      color: const Color.fromARGB(255, 41, 41, 41),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[300])),
            const SizedBox(
              height: 6,
            ),
            Text('- By @${quote.author}',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500])),
            IconButton(onPressed: delete, icon: const Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
