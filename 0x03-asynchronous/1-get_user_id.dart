// function getUserID() that returns a future string representing the user’s ID.
import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String userData  = await fetchUserData();
  Map<String, dynamic> userDataMap = jsonDecode(userData);
  return userDataMap['id'];
}
