import '3-util.dart';
import 'dart:convert';

/// Function greetUser() that returns a string as follows Hello <username> and that must use try-catch If an error occurs the function should return : error caught: <error>
Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userDataMap = jsonDecode(userData);
    return 'Hello ${userDataMap['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

/// Function loginUser() that should call the provided function checkCredentials() which returns a future bool. Must use try-catch If an error occurs the function should return error caught: <error>
Future<String> loginUser() async {
  try {
    bool validCredentials = await checkCredentials();
    print('There is a user: $validCredentials');
    if (validCredentials) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
