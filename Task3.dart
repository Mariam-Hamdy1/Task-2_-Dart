// Problem 3: Group Words by First Letter

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:taskdart/main.dart';
 
void main() {
Map<String, List<String>> groupByFirstLetter(List<String> words) {
  final Map<String, List<String>> result = {};
  for (var word in words) {
    final key = word[0];
    result[key] = (result[key] ?? [])..add(word);
  }
  return result;
}

}