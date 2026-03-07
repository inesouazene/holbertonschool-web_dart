// dart Program That given an argument ,determine if its positive or negative
void main(List<String> args) {
  int number = int.parse(args[0]);
  if (number > 0) {
    print("$number is positive");
  } else if (number == 0) {
    print("$number is zero");
  } else {
    print("$number is negative");
  }
}
