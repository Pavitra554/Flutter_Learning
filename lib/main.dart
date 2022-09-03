import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("First App"),
        centerTitle: true,
        backgroundColor: Colors.indigo[700],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.red.shade300,
                padding: const EdgeInsets.all(30.0),
                child: const Text('Box'),
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue.shade300,
                padding: const EdgeInsets.all(30.0),
                child: const Text('Box'),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.green.shade300,
                padding: const EdgeInsets.all(30.0),
                child: const Text('Box'),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.indigo[700],
        child: Icon(
          Icons.search,
          color: Colors.indigo[100],
        ),
      ),
    );
  }
}


//----------------------------------Expended

/*
 Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.red.shade300,
                padding: const EdgeInsets.all(30.0),
                child: const Text('Box'),
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue.shade300,
                padding: const EdgeInsets.all(30.0),
                child: const Text('Box'),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.green.shade300,
                padding: const EdgeInsets.all(30.0),
                child: const Text('Box'),
              )),
        ],
      ),
 */

//--------------------------------------Column

/*
Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            color: Colors.red.shade500,
            padding: const EdgeInsets.all(10.0),
            child: const Text('Box'),
          ),
          Container(
            color: Colors.green.shade500,
            padding: const EdgeInsets.all(20.0),
            child: const Text('Box'),
          ),
          Container(
            color: Colors.orange.shade500,
            padding: const EdgeInsets.all(30.0),
            child: const Text('Box'),
          ),
        ],
      ),
 */

//-----------------------------------------Row

/*
Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.red.shade500,
            padding: const EdgeInsets.all(10.0),
            child: const Text('Box'),
          ),
          Container(
            color: Colors.green.shade500,
            padding: const EdgeInsets.all(20.0),
            child: const Text('Box'),
          ),
          Container(
            color: Colors.orange.shade500,
            padding: const EdgeInsets.all(30.0),
            child: const Text('Box'),
          ),
        ],
      ),
 */

//------------------------------------Buttons

/*
child: ElevatedButton.icon(
        icon: const Icon(Icons.search),
        label: const Text(
          'Search',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () => {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.indigo[700]),
        ),
      )
 */


/*
child: IconButton(
        icon: const Icon(
          Icons.flutter_dash_sharp,
        ),
        iconSize: 100,
        color: Colors.blue.shade400,
        onPressed: () => {},
      )
 */

//--------------------------------------Margin pading and container

 /*
  Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        margin: const EdgeInsets.all(10.0),
        color: Colors.grey.shade400,
        child: const Text('hello world'),
      )
  */