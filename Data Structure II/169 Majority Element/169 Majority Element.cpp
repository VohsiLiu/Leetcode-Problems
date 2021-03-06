#include "iostream"
#include "sstream"
#include "string"
#include "vector"
#include "map"

using namespace std;

class Solution {
public:
    int majorityElement(vector<int>& nums) {
        map<int, int> counts;
        for (int num : nums){
            counts[num]++;
        }
        int majority = 0;
        int max_time = 0;
        for (auto & count : counts){
            if (count.second > max_time){
                majority = count.first;
                max_time = count.second;
            }
        }
        return majority;
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

        int ret = Solution().majorityElement(nums);

        string out = to_string(ret);
        cout << out << endl;
    }
    return 0;
}
