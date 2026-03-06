// function outer() take two argument name, id and print the result of inner() function
void outer(String name, String id) {
  var words = name.split(" "); // split the name into 2 words
  var nameParts = "${words[1][0]}.${words[0]}"; // create name in "B.Youssef" format

  // inside function inner() that returns a string
  String inner() {
    return "Hello Agent $nameParts your id is $id";
  }

  print(inner());
}
