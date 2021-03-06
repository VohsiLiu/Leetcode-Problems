#include "unordered_map"
#include "iostream"
#include "string"
#include "stack"


using namespace std;

class Solution {
public:
    bool isValid(string s) {
        if (s.size() % 2 == 1){
            return false;
        }
        stack<char> stk;
        unordered_map<char,char> pairs{
                {')','('},
                {']','['},
                {'}','{'}
        };
        for (char c : s){
            if (pairs.count(c)){//如果是右括号
                if (stk.empty() || stk.top() != pairs[c]){
                    return false;
                }
                stk.pop();
            }else{ //如果是右括号
                stk.push(c);
            }
        }
        return stk.empty();
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

string boolToString(bool input) {
    return input ? "True" : "False";
}

int main() {
    string line;
    while (getline(cin, line)) {
        string s = stringToString(line);

        bool ret = Solution().isValid(s);

        string out = boolToString(ret);
        cout << out << endl;
    }
    return 0;
}