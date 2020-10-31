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
      body: Container(
        color: Colors.grey[400],
        child: Text("Hello"),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
