#include "vector"

using namespace std;

class Solution {
public:
    bool isValidSudoku(vector<vector<char>>& board) {
        int rows[9][9];
        int columns[9][9];
        int squares[3][3][9];

        memset(rows,0,sizeof(rows));
        memset(columns,0,sizeof(columns));
        memset(squares,0,sizeof(squares));

        for (int i=0; i<9; i++){
            for (int j=0; j<9; j++){
                if (board[i][j] != '.'){
                    int index = board[i][j] - '0' - 1;
                    rows[i][index]++;
                    columns[j][index]++;
                    squares[i/3][j/3][index]++;
                    if (rows[i][index] > 1 || columns[j][index] > 1 || squares[i/3][j/3][index] > 1 ){
                        return false;
                    }
                }
            }
        }
        return true;
    }
};
