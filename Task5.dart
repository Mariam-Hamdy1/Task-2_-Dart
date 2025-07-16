	// Problem 10: Async Parallel Data Merge

import 'dart:io';
 
void main() {
Future<String> getUser() async {
  await Future.delayed(Duration(seconds: 1));
  return "User";
}

Future<String> getPosts() async {
  await Future.delayed(Duration(seconds: 1));
  return "Posts";
}

Future<String> mergeData() async {
  final results = await Future.wait([getUser(), getPosts()]);
  return results.join(" - ");
}


}