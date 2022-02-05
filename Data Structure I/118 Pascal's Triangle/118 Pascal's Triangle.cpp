#include "vector"
#include "iostream"
using namespace std;


class Solution {
public:
    vector<vector<int>> generate(int numRows) {
        vector<vector<int>> dp;
        dp.push_back(vector<int>(1,1));
        for (int i = 1; i<numRows; i++){
            vector<int> temp;
            temp.push_back(1);
            for (int j = 0;j < i-1; j++){
                temp.push_back(dp[i-1][j]+dp[i-1][j+1]);
            }
            temp.push_back(1);
            dp.push_back(temp);
        }
        return dp;
    }
};


int main(){
    Solution *s = new Solution();
    s->generate(5);
}