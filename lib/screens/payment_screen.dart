import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:shoping_strore/shared/themes/colors.dart';
import 'package:shoping_strore/shared/themes/text.dart';
import 'package:shoping_strore/shared/widgets/back_button.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({super.key});

  @override
  State<StatefulWidget> createState() {
    return CreditCardView();
  }
}

class CreditCardView extends State<CreditCard> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: white2,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // forceMaterialTransparency: true,
        leading: MyBackButton(),
        title: Text(
          'Payment Page',
          style: h5Bold.merge(
            TextStyle(color: darkBlue2),
          ),
        ),
        backgroundColor: white2.withOpacity(1),
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              bankName: 'Axis Bank',
              showBackView: isCvvFocused,
              obscureCardNumber: true,
              obscureCardCvv: true,
              isHolderNameVisible: true,
              cardBgColor: darkBlue2,
              isSwipeGestureEnabled: true,
              onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
              customCardTypeIcons: <CustomCardTypeIcon>[
                CustomCardTypeIcon(
                  cardType: CardType.mastercard,
                  cardImage: Image.asset(
                    'assets/images.png',
                    height: 48,
                    width: 48,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    CreditCardForm(
                      formKey: formKey,
                      obscureCvv: true,
                      obscureNumber: true,
                      cardNumber: cardNumber,
                      cvvCode: cvvCode,
                      isHolderNameVisible: true,
                      isCardNumberVisible: true,
                      isExpiryDateVisible: true,
                      cardHolderName: cardHolderName,
                      expiryDate: expiryDate,
                      themeColor: Colors.blue,
                      textColor: Colors.black,
                      cardNumberDecoration: InputDecoration(
                          filled: true,
                          fillColor: white2,
                          labelText: 'Number',
                          hintText: 'XXXX XXXX XXXX XXXX',
                          hintStyle: title1Bold.merge(
                            TextStyle(
                              color: black.withOpacity(0.6),
                            ),
                          ),
                          labelStyle: title1Bold.merge(
                            TextStyle(
                              color: black.withOpacity(0.6),
                            ),
                          ),
                          focusedBorder: border,
                          enabledBorder: border,
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          )),
                      expiryDateDecoration: InputDecoration(
                        filled: true,
                        fillColor: white2,
                        hintStyle: title1Bold.merge(
                          TextStyle(
                            color: black.withOpacity(0.6),
                          ),
                        ),
                        labelStyle: title1Bold.merge(
                          TextStyle(
                            color: black.withOpacity(0.6),
                          ),
                        ),
                        focusedBorder: border,
                        enabledBorder: border,
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        labelText: 'Expired Date',
                        hintText: 'XX/XX',
                      ),
                      cvvCodeDecoration: InputDecoration(
                        filled: true,
                        fillColor: white2,
                        hintStyle: title1Bold.merge(
                          TextStyle(
                            color: black.withOpacity(0.6),
                          ),
                        ),
                        labelStyle: title1Bold.merge(
                          TextStyle(
                            color: black.withOpacity(0.6),
                          ),
                        ),
                        focusedBorder: border,
                        enabledBorder: border,
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        labelText: 'CVV',
                        hintText: 'XXX',
                      ),
                      cardHolderDecoration: InputDecoration(
                        filled: true,
                        fillColor: white2,
                        hintStyle: title1Bold.merge(
                          TextStyle(
                            color: black.withOpacity(0.6),
                          ),
                        ),
                        labelStyle: title1Bold.merge(
                          TextStyle(
                            color: black.withOpacity(0.6),
                          ),
                        ),
                        focusedBorder: border,
                        enabledBorder: border,
                        labelText: 'Card Holder',
                      ),
                      onCreditCardModelChange: onCreditCardModel,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          _showValidDialog(context);
                          print('valid!');
                        } else {
                          print('invalid!');
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: darkBlue2,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: const Text(
                          'Validate',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'halter',
                            fontSize: 14,
                            package: 'flutter_credit_card',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showValidDialog(
    BuildContext context,
  ) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Valid",
            style: title2Bold.merge(
              TextStyle(
                color: darkBlue2,
              ),
            ),
          ),
          content: Text(
            "Your card successfully valid !!!",
            style: title2Bold.merge(
              TextStyle(
                color: darkBlue2,
              ),
            ),
          ),
          actions: [
            TextButton(
                child: Text(
                  "Ok",
                  style: title2Bold.merge(
                    TextStyle(
                      color: darkBlue2,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        );
      },
    );
  }

  void onCreditCardModel(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
