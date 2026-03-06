import '9-palindrome.dart';

// function longestPalindrome() that accepts one argument String and returns the longest palindrome substring
String longestPalindrome(String s) {
  String longest = "";

  for (int start = 0; start < s.length; start++) {
    for (int end = start + 3; end <= s.length; end++) {
      String current = s.substring(start, end); 
      if (isPalindrome(current) && current.length > longest.length) {
        longest = current;
      }
    }
  }

  return longest.isEmpty ? "none" : longest;
}
