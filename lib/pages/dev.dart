import 'package:flutter/material.dart';

class Developers extends StatefulWidget {
  @override
  _DevelopersState createState() => _DevelopersState();
}

class _DevelopersState extends State<Developers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232637),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/phyerwaal_dev_logo_final.png",
                ),
              ),
            ),
            Text(
              "App Developed and Managed \n by Phyerwaal.",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            DevDetails(
                devName: "Tejas Raibagi",
                devDomain: "FrontEnd & UI/UX Developer"),
            DevDetails(
                devName: "Prasad Jadhav", devDomain: "FrontEnd Developer"),
            DevDetails(devName: "Sujoy Dev", devDomain: "BackEnd Developer"),
            DevDetails(devName: "Aseem Godambe", devDomain: "UI/UX Developer")
          ],
        ),
      )),
    );
  }
}

class DevDetails extends StatelessWidget {
  const DevDetails({
    Key key,
    this.devName,
    this.devDomain,
  }) : super(key: key);

  final String devName;
  final String devDomain;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xFF2A2D40)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage("assets/avatar.png"),
            radius: 35,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                devName,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                devDomain,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}
