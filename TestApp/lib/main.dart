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
      body: Padding(
        padding: EdgeInsets.all(90.0),
        child: Text("Hello World"),
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
