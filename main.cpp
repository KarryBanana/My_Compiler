#include <iostream>
#include <cstdlib>
#include <cstdio>
#include <string>
#include <cstring>
#include <sstream>
using namespace std;

char file[1000]; //�����ȡ��Ŀ�����
string token; //�����ȡ�ĵ���
int num; //�������������

void clearToken() {
    token = "";
    return ;
}

bool isSpace(char c) {
    return c == ' ' ? true : false;
}

bool isNewline(char c) {
    return c == '\n' ? true : false;
}

bool isTab(char c) {
    return c == '\t' ? true : false;
}

bool isLetter(char c) {
    if( (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') )
        return true;
    return false;
}

bool isDigit(char c) {
    if(c >= '0' && c <= '9')
        return true;
    return false;
}

bool isColon(char c) { //ð��
    return c == ':' ? true : false;
}

bool isComma(char c) { //����
    return c == ',' ? true : false;
}

bool isEqual(char c){
    return c == '=' ? true : false;
}

bool isPlus(char c) { //�Ӻ�
    return c == '+' ? true : false;
}
bool isStar(char c) { //�Ǻ�
    return c == '*' ? true : false;
}
bool isLpar(char c) { //������
    return c == '(' ? true : false;
}
bool isRpar(char c) { //������
    return c == ')' ? true : false;
}

bool isKeyword(string s){
    if(s == "BEGIN"){
        cout<<"Begin"<<endl;
        return true;
    }
    else if(s == "END"){
        cout<<"End"<<endl;
        return true;
    }
    else if(s == "FOR"){
        cout<<"For"<<endl;
        return true;
    }
    else if(s == "IF"){
        cout<<"If"<<endl;
        return true;
    }
    else if(s == "ELSE"){
        cout<<"Else"<<endl;
        return true;
    }
    else if(s == "THEN"){
        cout<<"Then"<<endl;
        return true;
    }
    return false;
}

int transNum(string s){ //�޷�������,������int
    int i = 0, len = s.size(), value = 0;
    while(s[i] == '0')
        i++;
    for(;i < len; ++i){
        value*= 10;
        value += s[i] - '0';
    }
    return value;
}

bool getSym(int len) {
    int i = 0;
    while(i < len) {
        token = "";
        while(isSpace(file[i]) || isNewline(file[i]) ||
                isTab(file[i]))
            i++;
        if( isLetter(file[i]) ) {
            while( isLetter(file[i]) || isDigit(file[i]) ) {
                token += file[i];
                i++;
            }
            i--; //��ȡ����letter�ַ�
            if( !isKeyword(token) )
                cout<<"Ident("+token+")"<<endl;
        }
        else if(isDigit(file[i])){
            while(isDigit(file[i]))
                token+=file[i++];
            i--; //��ȡ����digit�ַ�
            num = transNum(token);
            cout<<"Int("+std::to_string(num)+")"<<endl;
        }
        else if(isColon(file[i])){
            if(isEqual(file[i + 1]))
                cout<<"Assign"<<endl;
            else
                cout<<"Colon"<<endl;
            i++;
        }
        else if(isPlus(file[i]))
            cout<<"Plus"<<endl;
        else if(isStar(file[i]))
            cout<<"Star"<<endl;
        else if(isComma(file[i]))
            cout<<"Comma"<<endl;
        else if(isLpar(file[i]))
            cout<<"LParenthesis"<<endl;
        else if(isRpar(file[i]))
            cout<<"RParenthesis	"<<endl;
        else{
            cout<<"Unknown"<<endl;
            return false;
        }
        i++;
    }
    return true;
}
int main() {
    std::ios::sync_with_stdio(false);
    FILE* fp;
    fp = fopen("code.c", "r");
    while(fscanf(fp,"%s", file) != EOF) {
        int len = strlen(file);
        if(!getSym(len))
            break;
    }
    fclose(fp);
    return 0;
}
