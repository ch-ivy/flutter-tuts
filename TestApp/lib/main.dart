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
      body: Center(
        child: IconButton(
          onPressed: () {
            print("Button is changed!");
          },
          icon: Icon(Icons.alternate_email),
          color: Colors.blue,
        ),
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
