#include "iostream"
#include "string"
#include "vector"

using namespace std;

class Solution {
public:
    int numTrees(int n) {
        vector<int> dp(n + 1, 1);
        for (int i = 2; i <= n; i++){
            int temp = 0;
            for (int j = 0; j < i; j++){
                temp += dp[j] * dp[i - 1 - j];
            }
            dp[i] = temp;
        }
        return dp[n];
    }
};

int stringToInteger(string input) {
    return stoi(input);
}

int main() {
    string line;
    while (getline(cin, line)) {
        int n = stringToInteger(line);

        int ret = Solution().numTrees(n);

        string out = to_string(ret);
        cout << out << endl;
    }
    return 0;
}