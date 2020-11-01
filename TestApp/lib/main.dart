import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[Text("Hello"), Text("World")],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.blueAccent[200],
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.blueAccent[400],
            child: Text('Two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.blueAccent[700],
            child: Text('Three'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Mommy 🤣");
        },
        child: Text("Click!"),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
