/* Create a User class:
* Properties :
* name : String
* age : int
* height: double
* id : int

* And a method called toJson() that returns a map representation of the User

* Create a new instance called fromJson it accept Map as parameter should return every value inside it.

* Create a method called toString() that returns a string => User(id : id ,name: name, age: age, height: height);

* Create a new property in the User class called user_password that contain the password.

* Add null check to all targets in 6-password.dart and null coalescing operator if necessary.

* Call isValid method from Password class after you passed user_password to Password class.
*/

import '6-password.dart';

class User extends Password {
  String name;
  int age;
  double height;
  int id;

  User({required this.id,required this.name, required this.age, required this.height, required String user_password}) 
  : super(password: user_password);

  String get user_password => password;
  set user_password(String user_password) {
    password = user_password;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(id: userJson['id'], name: userJson['name'], age: userJson['age'], height: userJson['height'], user_password: userJson['user_password']);
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
