#include "vector"
#include "algorithm"


using namespace std;


class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        sort(nums.begin(),nums.end());
        vector<vector<int>> ans;
        int size = nums.size();
        if (size < 3 || nums.empty()){
            return ans;
        }
        for (int i = 0; i < size ;i++){
            if (nums[i] > 0){
                break;
            }
            int left = i + 1;
            int right = size - 1;
            if (i > 0 && nums[i] == nums[i-1]){
                continue;
            }//去重
            while (left < right){
                int sum = nums[i] + nums[left] + nums[right];
                if (sum == 0){
                    ans.push_back(vector<int> {nums[i],nums[left],nums[right]});
                    left++;
                    right--;
                    while (left < right && nums[left] == nums[left-1]){
                        left++;
                    }
                    while (left < right && nums[right] == nums[right+1]){
                        right--;
                    }
                }else if (sum > 0){
                    right--;
                }else if (sum < 0){
                    left++;
                }
            }

        }
        return ans;
    }
};

