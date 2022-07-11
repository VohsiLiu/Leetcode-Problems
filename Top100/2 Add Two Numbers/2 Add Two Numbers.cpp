#include "iostream"
#include "vector"
#include "string"
#include "sstream"

using namespace std;

struct ListNode {
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};


class Solution {
public:
    ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
        ListNode * p = l1;
        ListNode * q = l2;
        int len1 = 1;
        int len2 = 1;
        while(p->next != nullptr){
            len1++;
            p = p->next;
        }
        while(q->next != nullptr){
            len2++;
            q = q->next;
        }
        if (len1 > len2){
            for (int i = 0; i < len1 - len2; i++){
                q->next = new ListNode(0);
                q = q->next;
            }
        }
        if (len1 < len2){
            for (int i = 0; i < len2 - len1; i++){
                p->next = new ListNode(0);
                p = p->next;
            }
        }
        int carry = 0;
        ListNode * ans;
        ListNode * curr = new ListNode(-1);
        for (int i = 0; i < max(len1, len2); i++){
            int val = l1->val + l2->val + carry;
            l1 = l1->next;
            l2 = l2->next;
            if (val > 9){
                val = val - 10;
                carry = 1;
            }else{
                carry = 0;
            }
            curr->next = new ListNode(val);
            curr = curr->next;
            if (i == 0){
                ans = curr;
            }
        }
        if (carry == 1){
            curr->next = new ListNode(1);
        }
        return ans;
    }
};

void trimLeftTrailingSpaces(string &input) {
    input.erase(input.begin(), find_if(input.begin(), input.end(), [](int ch) {
        return !isspace(ch);
    }));
}

void trimRightTrailingSpaces(string &input) {
    input.erase(find_if(input.rbegin(), input.rend(), [](int ch) {
        return !isspace(ch);
    }).base(), input.end());
}

vector<int> stringToIntegerVector(string input) {
    vector<int> output;
    trimLeftTrailingSpaces(input);
    trimRightTrailingSpaces(input);
    input = input.substr(1, input.length() - 2);
    stringstream ss;
    ss.str(input);
    string item;
    char delim = ',';
    while (getline(ss, item, delim)) {
        output.push_back(stoi(item));
    }
    return output;
}

ListNode* stringToListNode(string input) {
    // Generate list from the input
    vector<int> list = stringToIntegerVector(input);

    // Now convert that list into linked list
    ListNode* dummyRoot = new ListNode(0);
    ListNode* ptr = dummyRoot;
    for(int item : list) {
        ptr->next = new ListNode(item);
        ptr = ptr->next;
    }
    ptr = dummyRoot->next;
    delete dummyRoot;
    return ptr;
}

string listNodeToString(ListNode* node) {
    if (node == nullptr) {
        return "[]";
    }

    string result;
    while (node) {
        result += to_string(node->val) + ", ";
        node = node->next;
    }
    return "[" + result.substr(0, result.length() - 2) + "]";
}

int main() {
    string line;
    while (getline(cin, line)) {
        ListNode* l1 = stringToListNode(line);
        getline(cin, line);
        ListNode* l2 = stringToListNode(line);

        ListNode* ret = Solution().addTwoNumbers(l1, l2);

        string out = listNodeToString(ret);
        cout << out << endl;
    }
    return 0;
}
