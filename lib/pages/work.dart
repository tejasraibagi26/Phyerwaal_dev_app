import 'package:flutter/material.dart';
import 'package:phyerwaal_dev/pages/dev.dart';
import 'package:phyerwaal_dev/pages/projects.dart';

class Work extends StatefulWidget {
  final String projectTitle;
  Work({this.projectTitle});

  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232637),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(29),
          bottomRight: Radius.circular(29),
        )),
        backgroundColor: Color(0xFF2A2D40),
        elevation: 0,
        title: Hero(
          tag: widget.projectTitle,
          child: Text(widget.projectTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Nunito",
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
        ),
      ),
      body: widget.projectTitle.toLowerCase() == "projects"
          ? Projects()
          : Developers(),
    );
  }
}
