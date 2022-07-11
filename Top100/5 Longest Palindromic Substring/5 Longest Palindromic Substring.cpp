#include "iostream"
#include "string"
#include "sstream"
#include "vector"

using namespace std;

class Solution {
public:
    string longestPalindrome(string s) {
        vector<vector<bool>> dp(s.size(), vector<bool>(s.size(), false));
        int maxLength = 0;
        int left = 0;
        for (int i = s.size() - 1; i >= 0; i--){
            for (int j = i; j < s.size(); j++){
                if (s[i] == s[j]){
                    if (j - i > 1){
                        dp[i][j] = dp[i+1][j-1];
                    }else{
                        dp[i][j] = true;
                    }
                }
                if (dp[i][j] && j - i + 1 > maxLength){
                    maxLength = j - i + 1;
                    left = i;
                }
            }
        }
        return s.substr(left, maxLength);
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

        string ret = Solution().longestPalindrome(s);

        string out = (ret);
        cout << out << endl;
    }
    return 0;
}