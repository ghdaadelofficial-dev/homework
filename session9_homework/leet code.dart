
  int singleNumber(List<int> nums) {
    nums.sort();
    
    for (int i = 0; i < nums.length - 1; i += 2) {
      if (nums[i] != nums[i + 1]) {
        return nums[i];
      }
    }
    
    return nums.last;
  }
