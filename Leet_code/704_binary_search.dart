class Solution {
  int search(List<int> nums, int target) {
    int l = 0;
    int r = nums.length - 1;
    while (l <= r){
      int mid  = (l + r) ~/2;
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        l = mid + 1;
      } else {
        r = mid - 1;
      }
    }
    return -1; // Target not found
    
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [-1,0,3,5,9,12];
  int target = 9;
  int result = solution.search(nums, target);
  print(result); // Output: 4
}