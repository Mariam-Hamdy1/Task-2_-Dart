	// Problem 11: Remove Duplicates and Sort Alphabetically

import 'dart:io';
 
void main() {
List<String> uniqueSortedWords(String text) {
  return text
      .toLowerCase()
      .split(RegExp(r'\s+'))
      .toSet()
      .toList()
      ..sort();
}

}