#include "vector"

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
    ListNode* merge(ListNode* p1, ListNode* p2){
        ListNode* dummy = new ListNode(-1);
        ListNode* curr = dummy;
        while (p1 != nullptr && p2 != nullptr){
            if (p1->val < p2->val){
                curr->next = p1;
                p1 = p1->next;
            }else{
                curr->next = p2;
                p2 = p2->next;
            }
            curr = curr->next;
        }
        if (p1 != nullptr){
            curr->next = p1;
        }else{
            curr->next = p2;
        }
        return dummy->next;
    }

    ListNode* mergeKLists(vector<ListNode*>& lists) {
        if (lists.size() == 0){
            return nullptr;
        }
        ListNode* res = lists[0];
        for (int i = 1; i < lists.size(); i++){
            res = merge(res, lists[i]);
        }
        return res;
    }
};

