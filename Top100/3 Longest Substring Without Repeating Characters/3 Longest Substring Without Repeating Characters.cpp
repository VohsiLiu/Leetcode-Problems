#include "iostream"
#include "string"
#include "unordered_map"

using namespace std;

class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        if (s.size() == 0){
            return 0;
        }
        unordered_map<char, int> hashmap;
        int res = 0;
        int left = 0;
        for (int i  = 0; i < s.size(); i++){
            if (hashmap.count(s[i]) > 0){
                left = hashmap[s[i]] + 1;
                auto it = hashmap.begin();
                while (it != hashmap.end()){
                    if (it->second < left){
                        hashmap.erase(it++);
                    }else{
                        it++;
                    }
                }
            }
            hashmap.insert(make_pair(s[i],i));
            res = max(res, i - left + 1);
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

        int ret = Solution().lengthOfLongestSubstring(s);

        string out = to_string(ret);
        cout << out << endl;
    }
    return 0;
}