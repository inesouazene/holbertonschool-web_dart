// function getUser() that prints the user’s string representation, that must use : try-catch If an error occurs the function should print "error caught: <error> "
import '2-util.dart';

Future<void> getUser() async {
  try {
    String userData = await fetchUser();
    print(userData);
  } catch (error) {
    print('error caught: $error');
  }
}
