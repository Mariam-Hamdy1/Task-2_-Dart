	// Problem 4: Vowel Percentage

import 'dart:io';
 
void main() {
int vowelPercentage(String sentence) {
  final vowels = 'aeiou';
  final letters = sentence.replaceAll(RegExp(r'[^a-zA-Z]'), '');
  final vowelCount = letters.split('').where((c) => vowels.contains(c.toLowerCase())).length;
  return ((vowelCount / letters.length) * 100).round();
}

}