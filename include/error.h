#pragma once

#include <iostream>
#include <string>


enum ErrorCode{
  ErrEOF,
  InvalidInput,
  InvalidOutput,
  Unexpected,
  DuplicateVar,
  DuplicateFunc,
  UndefinedVar,
  NoDeclare,
  NoConst,
  NoLet,
  CanNotOper,
  CanNotAssign,
  AssignToConst,
  VoidVar,
  NoMain,
  CanNotCompare,
  FuncNotExist,
  CanNotBreak,
  CanNotContinue,
  CanNotConvert,
};

class CompilationError {
  public:
    CompilationError(ErrorCode err){ _err = err;}
    ErrorCode getCode(){
      return _err;
    }
  private:
    ErrorCode _err;
};
