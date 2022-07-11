#include "vector"

using namespace std;

class Solution {
public:
    int minimumTotal(vector<vector<int>>& triangle) {
        if (triangle.empty()){
            return 0;
        }
        vector<vector<int>> dp;
        dp.push_back(vector<int> {triangle[0][0]});
        for (int i = 1; i < triangle.size(); i++){
            vector<int> temp;
            for (int j = 0; j < triangle[i].size(); j++){
                if (j == 0){
                    temp.push_back(dp[i-1][0] + triangle[i][j]);
                }else if(j == triangle[i].size() - 1){
                    temp.push_back(dp[i-1][j-1] + triangle[i][j]);
                }else{
                    temp.push_back(triangle[i][j] + min(dp[i-1][j-1],dp[i-1][j]));
                }
            }
            dp.push_back(temp);
            temp.clear();
        }
        return *min_element(dp[triangle.size()-1].begin(), dp[triangle.size()-1].end());
    }
};
