// print 3 times a string stored in the variable str, followed by its first 9 characters.
void main() {
  String str = "Holberton School";
  print(str * 3);
  print(str.substring(0, 9) + "\n");
}
