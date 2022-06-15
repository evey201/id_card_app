// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: PlaygroundCard(),
  ));
}

class PlaygroundCard extends StatefulWidget {
  const PlaygroundCard({Key? key}) : super(key: key);

  @override
  State<PlaygroundCard> createState() => _PlaygroundCardState();
}

class _PlaygroundCardState extends State<PlaygroundCard> {
  int gameLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Playground ID Card'),
        backgroundColor: Colors.blueGrey[800],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() => {
            gameLevel += 1
          })
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey[400],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/mario.webp"),
                backgroundColor: Colors.white,
                radius: 40.0,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.blueGrey[900],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Mario',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'CURRENT GAME LEVEL',
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$gameLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email_rounded,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'mario@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
