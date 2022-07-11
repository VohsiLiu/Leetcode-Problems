#include "vector"
#include "string"

using namespace std;

class Solution {
public:
    string letterMap[10] = {"","","abc","def","ghi","jkl","mno","pqrs","tuv","wxyz"};
    string s;
    vector<string> ans;

    void backTracking(string digits, int index){
        if (index == digits.size()){
            ans.push_back(s);
            return;
        }
        string letter = letterMap[digits[index] - '0'];
        for (int i = 0; i < letter.size(); i++){
            s.push_back(letter[i]);
            backTracking(digits, index + 1);
            s.pop_back();
        }
    }

    vector<string> letterCombinations(string digits) {
        if (digits.size() == 0){
            return ans;
        }
        backTracking(digits, 0);
        return ans;
    }
};