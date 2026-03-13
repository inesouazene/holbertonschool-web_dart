/* Create a User class:
* Properties :
* name : String
* age : int
* height: double
* And a method called toJson() that returns a map representation of the User .
*/

class User {
  String name;
  int age;
  double height;

  User({required this.name, required this.age, required this.height});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}
