mixin MyMixin {
  int mixinData = 10;
  void mixinFun(){

  }
}

class MySuper {
  int superData = 20;
  void superFun(){}
}

class MyClass extends MySuper with MyMixin {  // 다중상속처럼 이용가능
  void test(){
    superData++;
    superFun();
    mixinData++;
    mixinFun();
  }
}