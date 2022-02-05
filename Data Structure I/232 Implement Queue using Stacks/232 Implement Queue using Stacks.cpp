#include "stack"

class MyQueue {
public:
    std::stack<int> s;
    std::stack<int> aux;

    MyQueue() {}

    void push(int x) {
        if (s.empty()){
            s.push(x);
        }else{
            while(!s.empty()){
                int temp = s.top();
                s.pop();
                aux.push(temp);
            }
            s.push(x);
            while(!aux.empty()){
                int temp = aux.top();
                aux.pop();
                s.push(temp);
            }
        }
    }

    int pop() {
        int t = s.top();
        s.pop();
        return t;
    }

    int peek() {
        return s.top();
    }

    bool empty() {
        return s.empty();
    }
};

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue* obj = new MyQueue();
 * obj->push(x);
 * int param_2 = obj->pop();
 * int param_3 = obj->peek();
 * bool param_4 = obj->empty();
 */

