// Problem 1: Reverse Only Letters

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:taskdart/main.dart';

void main() {
  String reverseOnlyLetters(String s) {
    List<String> letters = s.split('').where((c) => RegExp(r'[a-zA-Z]').hasMatch(c)).toList().reversed.toList();
    int letterIndex = 0;
    return s.split('').map((c) {
      if (RegExp(r'[a-zA-Z]').hasMatch(c)) {
        return letters[letterIndex++];
      }
      return c;
    }).join();
  }

}


}