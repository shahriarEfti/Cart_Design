

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardLabels {
  static Text getDressLabel(
      {required String text, required bool isLabel}) {
    if (isLabel) {
      return Text(
        text,
        style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontFamily: "WorkSans"
        ),
      );
    }
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
    );
  }
}