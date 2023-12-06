import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}//.

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
  title: const Text(
    "Today's Report",
    style: TextStyle(color: Colors.white),
  ),
  backgroundColor: Colors.blue, 
),

  body: const SingleChildScrollView(
    child: Stack(
      children: [Column(
        children: [
          Row(children: [Text("TIME"), Text("TEMP"),Text("Symbol")]),
          Row(children: [Text("9:00"), Text("29"),Icon(Icons.sunny)],),
           Row(children: [Text("10:00"), Text("30"),Icon(Icons.sunny)],),
           Row(children: [Text("11:00"), Text("31"),Icon(Icons.sunny)],),
           Row(children: [Text("12:00"), Text("32"),Icon(Icons.sunny)],),
            Row(children: [Text("1:00"), Text("32"),Icon(Icons.sunny)],),
            Row(children: [Text("2:00"), Text("33"),Icon(Icons.sunny)],),
            Row(children: [Text("3:00"), Text("32"),Icon(Icons.sunny)],),

           
        ],
      ),]
    ),
  ),  );
  }
}
