import 'package:flutter/material.dart';

import '../constants.dart';

class CartHeader extends StatelessWidget {
  final String title;
  CartHeader({this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Text(
        title,
        style: kTextStyle,
        textAlign: TextAlign.right,
      ),
    );
  }
}
