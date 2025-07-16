// Problem 2: Longest Unique Character Substring
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:taskdart/main.dart';

void main() {
int longestUniqueSubstring(String s) {
  int maxLength = 0;
  for (int i = 0; i < s.length; i++) {
    Set<String> seen = {};
    for (int j = i; j < s.length; j++) {
      if (seen.contains(s[j])) break;
      seen.add(s[j]);
      maxLength = maxLength < seen.length ? seen.length : maxLength;
    }
  }
  return maxLength;
}
}