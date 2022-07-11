#include "iostream"
#include "string"
#include "vector"

using namespace std;

class Solution {
public:
    int longestValidParentheses(string s) {
        if (s.size() < 2){
            return 0;
        }
        vector<int> dp(s.size(), 0);
        int res = 0;
        for (int i = 1; i < s.size(); i++){
            if (s[i] == ')'){
                if (s[i - 1] == '('){
                    dp[i] = (i - 2 >= 0 ? dp[i - 2] : 0) + 2;
                }else{
                    if (dp[i - 1] != 0){
                        if (i - dp[i - 1] - 1 >=0 && s[i - dp[i - 1] - 1] == '('){
                            dp[i] = dp[i - 1] + 2 +
                                    (i - dp[i - 1] - 2 >= 0 ? dp[i - dp[i - 1] - 2] : 0);
                        }
                    }
                }
            }
            res = max(res, dp[i]);
        }
        return res;
    }
};

string stringToString(string input) {
    assert(input.length() >= 2);
    string result;
    for (int i = 1; i < input.length() -1; i++) {
        char currentChar = input[i];
        if (input[i] == '\\') {
            char nextChar = input[i+1];
            switch (nextChar) {
                case '\"': result.push_back('\"'); break;
                case '/' : result.push_back('/'); break;
                case '\\': result.push_back('\\'); break;
                case 'b' : result.push_back('\b'); break;
                case 'f' : result.push_back('\f'); break;
                case 'r' : result.push_back('\r'); break;
                case 'n' : result.push_back('\n'); break;
                case 't' : result.push_back('\t'); break;
                default: break;
            }
            i++;
        } else {
            result.push_back(currentChar);
        }
    }
    return result;
}

int main() {
    string line;
    while (getline(cin, line)) {
        string s = stringToString(line);

        int ret = Solution().longestValidParentheses(s);

        string out = to_string(ret);
        cout << out << endl;
    }
    return 0;
}