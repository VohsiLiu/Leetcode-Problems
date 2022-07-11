#include "iostream"
#include "sstream"
#include "vector"
#include "string"

using namespace std;


class Solution {
public:
    vector<int> getRow(int rowIndex) {
        vector<int> thisRow;
        vector<int> lastRow = {1};
        if (rowIndex == 0){
            return lastRow;
        }
        for (int i = 0; i < rowIndex; i++){
            thisRow.push_back(1);
            for (int j = 0; j < lastRow.size() - 1; j++){
                thisRow.push_back(lastRow[j] + lastRow[j+1]);
            }
            thisRow.push_back(1);
            lastRow = thisRow;
            if (i != rowIndex - 1){
                thisRow.clear();
            }
        }
        return thisRow;
    }
};

int stringToInteger(string input) {
    return stoi(input);
}

string integerVectorToString(vector<int> list, int length = -1) {
    if (length == -1) {
        length = list.size();
    }

    if (length == 0) {
        return "[]";
    }

    string result;
    for(int index = 0; index < length; index++) {
        int number = list[index];
        result += to_string(number) + ", ";
    }
    return "[" + result.substr(0, result.length() - 2) + "]";
}

int main() {
    string line;
    while (getline(cin, line)) {
        int rowIndex = stringToInteger(line);

        vector<int> ret = Solution().getRow(rowIndex);

        string out = integerVectorToString(ret);
        cout << out << endl;
    }
    return 0;
}

