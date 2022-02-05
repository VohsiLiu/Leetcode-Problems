#include "vector"

using namespace std;

class Solution {
public:
    vector<vector<int>> matrixReshape(vector<vector<int>>& mat, int r, int c) {
        vector<vector<int>> result;
        if (mat.size() * mat[0].size() != r * c){
            return mat;
        }
        int m = mat.size();
        int n = mat[0].size();
        for (int i = 0; i < r; i++){
            vector<int> temp;
            for (int j = 0; j < c; j++){
                temp.push_back(mat[(i*c+j)/n][(i*c+j)-((i*c+j)/n)*n]);
            }
            result.push_back(temp);
        }
        return result;
    }
};