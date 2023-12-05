class MyClass {
  String data1 = 'hello';
  static String data2 = 'world';

  myFun1(){}
  static myFun2(){}
}

main() {
  // MyClass.data1 = 'world';  // error, 객체멤버로 객체생성 후 객체이름으로 접근
  MyClass.data2 = 'hello';

  // MyClass.myFun1(); // error
  MyClass.myFun2();

  MyClass obj = MyClass();  // 객체 생성
  obj.data1 = 'world';  // 객체 이름으로 접근
  obj.myFun1();

  // obj.data2 = 'hello';  // error, 클래스 멤버로 클래스명으로 접근
  // obj.myFun2();

}