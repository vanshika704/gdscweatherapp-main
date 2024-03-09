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
  title: Text(
    "Today's Report",
    style: TextStyle(color: Colors.white),
  ),
  backgroundColor: Colors.blue, 
),

  body: Column(),  );
  }
}
