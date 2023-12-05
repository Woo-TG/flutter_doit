abstract class User {
  void some();   // 추상함수
}

class Customer extends User{
  @override
  void some() {

  }
}

class Test {
  int no;
  String name;
  Test(this.no, this.name);
  String hello(String who) => 'hello $who';
}

class Sub1 extends Test {
  Sub1(super.no, super.name);
}

class Sub2 implements Test {
  @override
  int no = 10;
  @override
  String name = 'kim';
  @override
  String hello(String who) {
    return 'aaa';
  }
}