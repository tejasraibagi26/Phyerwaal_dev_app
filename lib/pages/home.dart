import 'package:flutter/material.dart';
import 'package:phyerwaal_dev/components/Card.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
          backgroundColor: Color(0xFF232637),
          appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(29),
              bottomRight: Radius.circular(29),
            )),
            backgroundColor: Color(0xFF2A2D40),
            elevation: 0,
            centerTitle: true,
            title: Text(
              "PHYERWAAL_DEV",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Nunito",
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Cards(
                      size: size,
                      imageURL: "assets/project.png",
                      cardTitle: "PROJECTS",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Cards(
                      size: size,
                      imageURL: "assets/dev.png",
                      cardTitle: "DEVELOPERS",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Cards(
                      size: size,
                      imageURL: "assets/git.png",
                      cardTitle: "GITHUB",
                    )
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: _getBottomNavBar()),
    );
  }
}

ClipRRect _getBottomNavBar() {
  return ClipRRect(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(29), topRight: Radius.circular(29)),
    child: BottomNavigationBar(
      backgroundColor: Color(0xFF2A2D40),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[200],
      currentIndex: 0,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "Home",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w500),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(
              "Home",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w500),
            )),
      ],
    ),
  );
}
