import 'package:flutter/material.dart';
import 'package:phyerwaal_dev/pages/work.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key key,
    @required this.size,
    @required this.imageURL,
    @required this.cardTitle,
  }) : super(key: key);

  final Size size;
  final String imageURL;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Work(
                      projectTitle: cardTitle,
                    )));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: size.width,
        height: size.height * 0.15,
        decoration: BoxDecoration(
          color: Color(0xFF2D3043),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  imageURL,
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            Hero(
              tag: cardTitle,
              child: Text(
                cardTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Nunito",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
