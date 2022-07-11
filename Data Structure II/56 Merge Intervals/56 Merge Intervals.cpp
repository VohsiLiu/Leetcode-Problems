#include "vector"
#include "algorithm"

using namespace std;

class Solution {
public:
    static bool cmp (const vector<int> & a, const vector<int> & b){
        return a[0] < b[0];
    }

    vector<vector<int>> merge(vector<vector<int>>& intervals) {
        if (intervals.empty() || intervals.size() == 1){
            return intervals;
        }
        vector<vector<int>> ans;
        sort(intervals.begin(), intervals.end(), cmp);
        vector<int> temp = intervals[0];
        for (int i = 1; i < intervals.size(); i++){
            if(temp[1] >= intervals[i][0]){
                temp[1] = max(intervals[i][1],temp[1]);
            }else{
                ans.push_back(temp);
                temp = intervals[i];
            }
        }
        ans.push_back(temp);
        return ans;
    }
};
