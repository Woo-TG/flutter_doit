mixin MyMixin {             // 클래스가 아니므로 생성자는 선언 못함 --> 객체도 생성 못함
  int mixinData = 10;
  void mixinFun(){}
}

class MySuper {
  int superData = 20;
  void superFun(){}
}

class MyClass extends MySuper with MyMixin {  // 다중상속처럼 이용가능, with 예약어 사용
  void test(){
    superData++;
    superFun();
    mixinData++;
    mixinFun();
  }
}