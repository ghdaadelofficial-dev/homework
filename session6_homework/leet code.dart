bool containsDuplicate(List<int> nums) {
  Set<int> seen = {};

  for (int i = 0; i < nums.length; i++) {
    if (seen.contains(nums[i])) {
      return true;
    }
    seen.add(nums[i]);
  }

  return false;
}

void main() {
  List<int> nums = [1, 2, 3, 1];
  print(containsDuplicate(nums));
}