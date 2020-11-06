import 'package:flutter/material.dart';

class CardFrontLayout {
  String bankName;
  String cardNumber;
  String cardExpiry;
  String cardHolderName;
  Widget cardTypeIcon;
  double cardWidth;
  double cardNumberFontSize;
  double cardHeight;
  Color textColor;

  CardFrontLayout(
      {this.bankName = "",
      this.cardNumber = "",
      this.cardExpiry = "",
      this.cardHolderName = "",
      this.cardNumberFontSize = 20,
      this.cardTypeIcon,
      this.cardWidth,
      this.cardHeight = 0,
      this.textColor});

  Widget layout1() {
    return Container(
      width: cardWidth,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 30,
                  child: Center(
                    child: Text(
                      bankName,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: new Image.asset(
                      'images/contactless_icon.png',
                      fit: BoxFit.fitHeight,
                      width: 30.0,
                      height: 30.0,
                      color: textColor,
                      package: 'flutter_credit_card',
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Image.asset(
                  "images/chip.png",
                  package: "flutter_credit_card",
                  fit: BoxFit.fitHeight,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 5),
              child: Center(
                child: Text(
                  cardNumber == null || cardNumber.isEmpty
                      ? 'XXXX XXXX XXXX XXXX'
                      : cardNumber,
                  style: TextStyle(
                      package: 'flutter_credit_card',
                      color: textColor,
                      fontWeight: FontWeight.w500,
                      fontFamily: "MavenPro",
                      fontSize: cardNumberFontSize),
                ),
              )
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Container(
                          child: Text("VALID", style: TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                          ))
                        ),
                        Container(
                          child: Text("THRU", style: TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                          ))
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      cardExpiry == null || cardExpiry.isEmpty
                          ? "MM/YY"
                          : cardExpiry,
                      style: TextStyle(
                          package: 'flutter_credit_card',
                          color: textColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: "MavenPro",
                          fontSize: 16),
                    )
                  ),
                  cardTypeIcon
                ]
              )
            )
          ],
        ),
      )
    );
  }
}
