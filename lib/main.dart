import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Stateful',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Stateful'),
//         ),
//         body: Center(
//           child: ClickGood(),
//         )
//       )
//     );
//   }
// }
// class ClickGood extends StatefulWidget {
//   @override
//   _ClickGoodState createState() => _ClickGoodState();
// }
// class _ClickGoodState extends State {
//   bool _active = false;
//   void _handleTap() {
//     setState(() {
//       _active = !_active;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _handleTap,
//       child: Container(
//         child: Column(
//           children: <Widget>[
//             Container(
//               child: Center(
//                 child: Icon(
//                   _active ? Icons.thumb_up : Icons.thumb_down,
//                   color: _active? Colors.orange[900] : Colors.grey[300],
//                   size: 100,
//                 ),
//               ),
//               width: 200,
//               height: 200,
//             ),
//             Container(
//               child: Center(
//                 child: Text(
//                   _active? 'Active' : 'Inactive',
//                   style: TextStyle(
//                     fontSize: 32,
//                     color: Colors.white,
//                   )
//                 ),
//               ),
//               width: 200,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: _active ? Colors.orange[900] : Colors.grey[300],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: Center(
          child: ChangeForm(),
        )
      )
    );
  }
}
class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}
class _ChangeFormState extends State<ChangeForm> {
  int _count = 0;
  void _handlePressed() {
    setState(() {
      _count++;
    });
  }
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: <Widget>[
          Text(
            "$_count",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          // ElevatedButton(
          OutlinedButton(
            // style: ElevatedButton.styleFrom(
            style: OutlinedButton.styleFrom(
              // backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
            onPressed: _handlePressed,
            child: Text(
              '更新',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
              )
            ),
          ),
          IconButton(
            iconSize: 100,
            onPressed: _handlePressed,
            color: Colors.blueAccent,
            icon: Icon(Icons.add_circle_outline),
          ),
          PopupMenuButton<String>(
            onSelected: _handleChange,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value:"1",
                child: Text('選択1'),
              ),
              const PopupMenuItem<String>(
                value:"2",
                child: Text('選択2'),
              ),
              const PopupMenuItem<String>(
                value:"3",
                child: Text('選択3'),
              ),
            ]
          )
        ],
      ),
    );
  }
  void _handleChange(String value) {
    print(value);
  }
}








