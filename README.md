
<p><h2 align="left">flutter_credit_card</h2></p>

<h4>A Flutter package for creating credit card widget.</h4>


___

## ⚙️ Installation

Import the following package in your dart file

```dart
import 'package:flutter_credit_card/flutter_credit_card.dart';
```

## 👨‍💻 Usage

Use the `FlutterCreditCard` Widget

```dart
CreditCard(
    cardNumber: "5450 7879 4864 7854",
    cardExpiry: "10/25",
    cardHolderName: "Card Holder",
    cvv: "456",
    bankName: "Axis Bank",
    cardType: CardType.masterCard, // Optional if you want to override Card Type
    showBackSide: false,
    frontBackground: CardBackgrounds.black,
    backBackground: CardBackgrounds.white,
    showShadow: true,
),
```

For more detail on usage, check out the example provided.


## 🙍🏻‍♂️ Author

* [Bajomo David](http://github.com/Bajomodavid/)

* [Vivek Kaushik](http://github.com/iamvivekkaushik/) - This plugin is originally forked from his Awesome card plugin.

## 📄 License

Awesome Card is released under the MIT license.
See [LICENSE](./LICENSE) for details.
