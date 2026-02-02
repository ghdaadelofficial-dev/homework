// problem of leet code
bool isPalindrome(String s) {
  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    if (!isAlphaNumeric(s[left])) {
      left++;
      continue;
    }

    if (!isAlphaNumeric(s[right])) {
      right--;
      continue;
    }

    if (s[left].toLowerCase() != s[right].toLowerCase()) {
      return false;
    }

    left++;
    right--;
  }

  return true;
}

bool isAlphaNumeric(String c) {
  int code = c.codeUnitAt(0);
  return (code >= 48 && code <= 57) ||    // 0-9
         (code >= 65 && code <= 90) ||    // A-Z
         (code >= 97 && code <= 122);     // a-z
}

void main() {
  print(isPalindrome("A man, a plan, a canal: Panama")); // true
  print(isPalindrome("race a car"));                     // false
  print(isPalindrome(" "));                              // true
}
