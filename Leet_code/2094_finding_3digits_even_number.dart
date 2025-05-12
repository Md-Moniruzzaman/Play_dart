// Given an integer array digits that is sorted in non-decreasing order,
// return all the unique integers that can be formed by concatenating
// the elements of digits in any order, and that are even numbers.



class Solution {
  List<int> findEvenNumbers(List<int> digits) {
    digits.sort();
    List<int> result = [];
    for (int i = 0; i < digits.length; i++) {
      if (digits[i] == 0) continue;
      for (int j = 0; j < digits.length; j++) {
        if (j == i) continue;
        for (int k = 0; k < digits.length; k++) {
          if (k == i || k == j) continue;
          if (digits[k] % 2 == 0) {
            int num = digits[i] * 100 + digits[j] * 10 + digits[k];
            if (!result.contains(num)) {
              result.add(num);
            }
          }
        }
      }
    }
    result.sort();
    return result;
  }
}

// Driver code
void main() {
  Solution s = Solution();
  List<int> digits = [2, 1, 3, 0];
  print(s.findEvenNumbers(digits));
  print(s.findEvenNumbers([3, 7, 5]));
}
