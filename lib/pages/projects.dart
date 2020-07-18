import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232637),
      body: SafeArea(
        child: Center(
          child: Text("Project Area!"),
        ),
      ),
    );
  }
}
