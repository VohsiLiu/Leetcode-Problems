#include "iostream"
#include "string"

using namespace std;


class Solution {
public:
    int findTheWinner(int n, int k) {

    }
};

int stringToInteger(string input) {
    return stoi(input);
}

int main() {
    string line;
    while (getline(cin, line)) {
        int n = stringToInteger(line);
        getline(cin, line);
        int k = stringToInteger(line);

        int ret = Solution().findTheWinner(n, k);

        string out = to_string(ret);
        cout << out << endl;
    }
    return 0;
}

