import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
      this.cardExpiry = "--/--",
      this.cardHolderName = "----------",
      this.cardNumberFontSize = 20,
      this.cardTypeIcon,
      this.cardWidth,
      this.cardHeight = 0,
      this.textColor});

  Widget layout1() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFF0A2C4E),
        borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.all(10),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: SvgPicture.asset("images/chip.svg")
                  ),
                  Container(
                    child: SvgPicture.asset("images/circular_check.svg")
                  )
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                cardNumber == null || cardNumber.isEmpty
                ? '* * * *  * * * *  * * * *  * * * *'
                : cardNumber,
                style: GoogleFonts.dmSans(
                color: Colors.white,
                fontSize: cardNumberFontSize,
              ))
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("Card Holder Name", style: GoogleFonts.dmSans(
                            fontSize: 11,
                            color: Color(0XFF999999)
                          ),),
                        ),
                        Container(
                          child: Text(cardHolderName, style: GoogleFonts.dmSans(
                            fontSize: 11,
                            color: Color(0XFF999999)
                          ),),
                        ),
                      ],
                    )
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("Expiry Date", style: GoogleFonts.dmSans(
                            fontSize: 11,
                            color: Color(0XFF999999)
                          ),),
                        ),
                        Container(
                          child: Text(cardExpiry, style: GoogleFonts.dmSans(
                            fontSize: 11,
                            color: Color(0XFF999999)
                          ),),
                        ),
                      ],
                    )
                  ),
                  Container(
                    child: cardTypeIcon,
                  )
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}


