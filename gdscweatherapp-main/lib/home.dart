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

  body: const Stack(
    children: [Column(
      children: [
        Row(children: [Text("TIME"), Text(""),])
      ],
    ),]
  ),  );
  }
}
