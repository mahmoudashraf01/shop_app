import 'package:flutter/material.dart';

void goTo({required BuildContext context, required Widget screen}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}
void goToWithNoBackButton({required BuildContext context, required Widget screen}) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}
void goTohNamed({required BuildContext context, required Widget screen}) {
  Navigator.pushNamed(
    context,
    AutofillHints.addressCity
  );
}
