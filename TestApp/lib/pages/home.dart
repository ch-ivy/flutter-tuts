import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);

    String bgImage = data['dayTime'] ? 'img-1.jpg' : 'img-3.jpg';
    Color bgCol = data['dayTime'] ? Colors.pink[100] : Colors.redAccent[400];

    return Scaffold(
      backgroundColor: bgCol,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/$bgImage'), fit: BoxFit.cover)),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Column(
                children: [
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(
                      Icons.edit_location,
                      color: Colors.red[900],
                    ),
                    label: Text(
                      'Edit Location',
                      style: TextStyle(color: Colors.red[900]),
                    ),
                    color: Colors.red[50],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data['location'],
                        style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 2.0,
                            color: Colors.deepOrangeAccent),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    data['time'],
                    style:
                        TextStyle(fontSize: 66, color: Colors.deepOrangeAccent),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
