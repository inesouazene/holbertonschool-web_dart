// function usersCount() that prints the number of users.
import '0-util.dart';

Future<void> usersCount() async {
  int usersCount = await fetchUsersCount();
  print('$usersCount');
}
