#include "iostream"
#include "vector"
#include "sstream"

using namespace std;

class Solution {
public:
    int maxProduct(vector<int>& nums) {
        if (nums.empty()){
            return 0;
        }
        vector<int> dpMax(nums.size());
        vector<int> dpMin(nums.size());
        dpMax[0] = nums[0];
        dpMin[0] = nums[0];
        int res = nums[0];
        for (int i = 1; i < nums.size(); i++){
            dpMax[i] = max(dpMin[i-1] * nums[i], max(dpMax[i-1] * nums[i],nums[i]));
            dpMin[i] = min(dpMin[i-1] * nums[i], min(dpMax[i-1] * nums[i],nums[i]));
            res = max(dpMax[i], max(dpMin[i], res));
        }
        return res;
    }
};

void trimLeftTrailingSpaces(string &input) {
    input.erase(input.begin(), find_if(input.begin(), input.end(), [](int ch) {
        return !isspace(ch);
    }));
}

void trimRightTrailingSpaces(string &input) {
    input.erase(find_if(input.rbegin(), input.rend(), [](int ch) {
        return !isspace(ch);
    }).base(), input.end());
}

vector<int> stringToIntegerVector(string input) {
    vector<int> output;
    trimLeftTrailingSpaces(input);
    trimRightTrailingSpaces(input);
    input = input.substr(1, input.length() - 2);
    stringstream ss;
    ss.str(input);
    string item;
    char delim = ',';
    while (getline(ss, item, delim)) {
        output.push_back(stoi(item));
    }
    return output;
}

int main() {
    string line;
    while (getline(cin, line)) {
        vector<int> nums = stringToIntegerVector(line);

        int ret = Solution().maxProduct(nums);

        string out = to_string(ret);
        cout << out << endl;
    }
    return 0;
}