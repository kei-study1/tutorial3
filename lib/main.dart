import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
        ),
        body: Center(
          child: ClickGood(),
        )
      )
    );
  }
}

class ClickGood extends StatefulWidget {
  @override
  _ClickGoodState createState() => _ClickGoodState();
}

class _ClickGoodState extends State {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Icon(
                  _active ? Icons.thumb_up : Icons.thumb_down,
                  color: _active? Colors.orange[900] : Colors.grey[300],
                  size: 100,
                ),
              ),
              width: 200,
              height: 200,
            ),

            Container(
              child: Center(
                child: Text(
                  _active? 'Active' : 'Inactive',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  )
                ),
              ),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: _active ? Colors.orange[900] : Colors.grey[300],
              ),
            )
          ],
        ),
      ),
    );
  }

}





