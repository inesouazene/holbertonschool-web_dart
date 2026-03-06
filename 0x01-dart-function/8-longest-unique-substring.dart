// Function longestUniqueSubstring() that accepts one argument String and returns the longest non-repeating substring
String longestUniqueSubstring(String str) {
  String current = "";
  String longest = "";

  for (int i = 0; i < str.length; i++) {
    if (current.contains(str[i])) {
      current = current.substring(current.indexOf(str[i]) + 1); // remove part of the current substring up to and including the repeaated char 
    }
    current += str[i]; // add the current character to the current substring
    if (current.length > longest.length) {
      longest = current; // update longest if current is longer
    }
  }
  return longest;
}
