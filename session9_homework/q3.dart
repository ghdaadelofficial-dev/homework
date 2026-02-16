int binarySearch(List<int> nums, int target) {
  
  int start = 0; 
  int end = nums.length - 1;

  while (start <= end) {
    
    int mid = (start + end) ~/ 2;

    if (nums[mid] == target) {
      return mid; 
    }

    
    if (nums[mid] < target) {
      start = mid + 1; 
    } 
    
    else {
      end = mid - 1; 
    }
  }

  
  return -1;
}

void main() {
  List<int> myNumbers = [-1, 0, 3, 5, 9, 12];
  int myTarget = 9;
  
  int result = binarySearch(myNumbers, myTarget);
  print("place of number is: $result");
}