#include "vector"
#include "string"

using namespace std;

class Solution {
public:
    string s;
    vector<string> res;

    void backTracking(int n, int left, int right){
        if (left == n && right == n){
            res.push_back(s);
            return;
        }
        if (left < n){
            s.push_back('(');
            backTracking(n, left + 1, right);
            s.pop_back();
        }
        if (left > right){
            s.push_back(')');
            backTracking(n, left, right + 1);
            s.pop_back();
        }
    }

    vector<string> generateParenthesis(int n) {
        backTracking(n, 0, 0);
        return res;
    }
};
