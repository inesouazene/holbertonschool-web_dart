// Function isPalindrome() that accepts one argument String and returns True if the input String is a palindrome otherwise it returns False
bool isPalindrome(String s) {
  if (s.length < 3) return false;

  String reversedString = s.split('').reversed.join('');
  return s == reversedString;
}
