#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <stack>
using namespace std;

char sentence[1500]; //读入的句子
char st[1500];
int top = 0;

/*
    + * i ( ) #
  +
  *
  i
  (
  )
  #
*/
int TokenPri[10][10] =
{
    {2,1,1,1,2,2},
    {2,2,1,1,2,2},
    {2,2,-1,-1,2,2},
    {1,1,1,1,0,-1},
    {2,2,-1,-1,2,2},
    {1,1,1,1,-1,-1}
};

bool isTerminal(char c)
{
    if(c == '+' || c == '*' || c == 'i' || c == '('||
        c == ')' || c == '#')
        return true;
    return false;
}

int getTokenPos(char c)
{
    if(c == '+')
        return 0;
    if (c == '*')
        return 1;
    if(c == 'i')
        return 2;
    if(c == '(')
        return 3;
    if( c == ')')
        return 4;
    if(c == '#')
        return 5;
}

int getNextTerminal(int n)
{
    while(n >= 0){
        if( isTerminal(st[n]) )
            return n;
        --n;
    }
    return -1;
}
bool Recurve(char out) // out为当前栈外读到的终结符
{
    int idx = top - 1; // 指向栈顶此时的元素
    if(st[idx] == '+' || st[idx] == '-' || st[idx] == '*')
        return false;
    while( idx >= 0){
        if( !isTerminal(st[idx]) ){
            --idx;
            continue;
        }
        // 寻找到下一个终结符
        int next_pos = getNextTerminal(idx - 1);
        char next_terminal = st[next_pos];
        int now = getTokenPos(st[idx]); // 寻找矩阵中的位置
        int next_token = getTokenPos(next_terminal);
        // 比较相邻的关系
        if(TokenPri[next_token][now] == 0){
            idx = next_pos;
            continue;
        }
        else if(TokenPri[next_token][now] == 1){
            top = next_pos + 1;
            st[top++] = 'N';
            return true;
        }
    }
    return false;
}

bool checkFinish(char out)
{
    if(top == 2){
        if(st[0] == '#' && (!isTerminal(st[1])) &&
           out == '#')
            return true;
    }
    return false;
}

int main(int argc, char* argv[])
{
    std::ios::sync_with_stdio(false);
    FILE* fp;
    fp = fopen(argv[1], "r");
    fscanf(fp,"%s",sentence);
    st[top++] = '#'; //先将#入栈
    int len = strlen(sentence);
    sentence[len] = '#';
    for(int i = 0; i<len + 1; ++i){ //末尾加入#,长度+1
        char out = sentence[i];
        if(out == '\r' || out == '\n')
            break;
        //cout<<"it is "<<out<<"\n";
        if( !isTerminal(out) ){ //无法识别读入符号
            cout<<"E"<<endl;
            break;
        }
        //栈顶
        if( isTerminal(st[top - 1]) ){ //栈顶是终结符
            int pos1 = getTokenPos(st[top - 1]);
            int pos2 = getTokenPos(out);

            if(TokenPri[pos1][pos2] == -1){
                cout<<"E"<<endl;
                break;
            }
            else if(TokenPri[pos1][pos2] < 2){ // 入栈
                cout<<"I"<<sentence[i]<<endl;
                st[top++] = sentence[i];
            }
            else{ // 规约
                if(!Recurve(sentence[i])){
                    cout<<"RE"<<endl;
                    break;
                }
                // 规约成功
                cout<<"R"<<endl;
                --i;
            }
        }
        //栈次顶
        else if( isTerminal(st[top - 2])){
            int pos1 = getTokenPos(st[top - 2]);
            int pos2 = getTokenPos(out);

            if(TokenPri[pos1][pos2] == -1){
                cout<<"E"<<endl;
                break;
            }
            else if(TokenPri[pos1][pos2] < 2){ // 入栈
                cout<<"I"<<sentence[i]<<endl;
                st[top++] = sentence[i];
            }
            else{ // 规约
                if(!Recurve(sentence[i])){
                    cout<<"RE"<<endl;
                    break;
                }
                // 规约成功
                cout<<"R"<<endl;
                --i;
            }
        }

        if(checkFinish(out)) // 检查是否规约结束了
            break;
    }
    return 0;
}
