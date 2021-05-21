import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score App',
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Score is:",
              style: TextStyle(color: Colors.green, fontSize: 35),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              number.toString(),
              style: TextStyle(color: Colors.green, fontSize: 85),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Increase",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: increaseNumber,
              ),
              SizedBox(
                width: 40,
              ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  "decrease",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: decreaseNumber,
              )
            ],
          )
        ],
      ),
    );
  }
}
