/* Create a class called Password and give it a string property called password private.

* Add a method to Password called isValid that returns true only
*   -  The length of password should be between 8 and 16.
*   -  password should contains Uppercase letters and lowercase letters
*   -  password should contains numbers .
*   -  toString :
*   -  Example password = "ShouldWorkf7ne"
*   -  Override the toString method of Password class to prints Your Password is: ShouldWorkf7ne.

*/

class Password {
  late String _password;

  Password({required String password}) {
    _password = password;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }

  bool isValid() {
    if ((_password.length < 8 || _password.length > 16) || 
        (!_password.contains(RegExp(r'[A-Z]'))) ||
        (!_password.contains(RegExp(r'[a-z]'))) ||
        (!_password.contains(RegExp(r'[0-9]')))
        ) {
      return false;
    }
    return true;  
  }
}
