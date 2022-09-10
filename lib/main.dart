import 'package:flutter/material.dart';

//Custom class
import 'quotes.dart';
import 'quotecard.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: const QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  //List of objects
  List<Quotes> quotes = [
    Quotes(text: 'hello this is my first Quote', author: 'pavitra'),
    Quotes(text: 'hello this is my second Quote', author: 'pavitra'),
    Quotes(text: 'hello this is my third Quote', author: 'pavitra'),
    Quotes(text: 'hello this is my forth Quote', author: 'pavitra'),
  ];

//Custom widget for quote card

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade800,
        title: const Text('Quotes'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes
            .map((e) => QuoteCard(
                  quote: e,
                  delete: () {
                    setState(() {
                      quotes.remove(e);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
