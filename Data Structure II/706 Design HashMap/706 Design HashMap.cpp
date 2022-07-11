#include "vector"

using namespace std;

class MyHashMap {
private:
    struct ListNode{
        int key;
        int value;
        ListNode * next;
        ListNode(): key(0), value(0), next(nullptr){};
        ListNode(int x, int y): key(x), value(y), next(nullptr){};
    };

    static const int base = 769;
    vector<ListNode *> map;

    static int hash(int key){
        return key % base;
    }

    static ListNode * insert(ListNode * head, ListNode * newNode){
        ListNode * newHead = head;
        ListNode * prev = nullptr;
        ListNode * curr = head;
        while (curr != nullptr && newNode->key > curr->key){
            prev = curr;
            curr = curr->next;
        }
        if (curr == nullptr || curr->key != newNode->key){
            if (prev == nullptr){
                newNode->next = head;
                newHead = newNode;
            }else {
                newNode->next = prev->next;
                prev->next = newNode;
            }
        }else{
            curr->value = newNode->value;
        }
        return newHead;
    }

    static ListNode * remove(ListNode * head, int key){
        if (head == nullptr){
            return head;
        }
        ListNode * newHead = head;
        ListNode * prev = nullptr;
        ListNode * curr = head;
        while (curr != nullptr && key != curr->key){
            prev = curr;
            curr = curr->next;
        }
        if (curr != nullptr){
            if (prev == nullptr){
                newHead = head->next;
                delete head;
            }else{
                prev->next = curr->next;
                delete curr;
            }
        }
        return newHead;
    }


public:
    MyHashMap() : map(base){}

    void put(int key, int value) {
        int pos = hash(key);
        ListNode * node = new ListNode(key, value);
        map[pos] = insert(map[pos], node);
    }

    int get(int key) {
        int pos = hash(key);
        ListNode * node = map[pos];
        while (node != nullptr){
            if (node->key == key){
                break;
            }
            node = node->next;
        }
        if (node == nullptr){
            return -1;
        }
        return node->value;
    }

    void remove(int key) {
        int pos = hash(key);
        map[pos] = remove(map[pos], key);
    }
};

/**
 * Your MyHashMap object will be instantiated and called as such:
 * MyHashMap* obj = new MyHashMap();
 * obj->put(key,value);
 * int param_2 = obj->get(key);
 * obj->remove(key);
 */

