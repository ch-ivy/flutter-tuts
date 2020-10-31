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
        child: RaisedButton.icon(
          onPressed: () {
            print("Icon Button is Clicked");
          },
          icon: Icon(Icons.mail),
          label: Text("Mail Me!"),
          color: Colors.amber,
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
