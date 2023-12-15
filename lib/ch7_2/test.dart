abstract class User {
  void some();   // 추상함수
}

class Customer extends User{
  @override
  void some() {

  }
}

 // 인터페이스

class Test {
  int no;
  String name;
  Test(this.no, this.name);
  String hello(String who) => 'hello $who';
}

class Sub1 extends Test {       // 상속
  Sub1(super.no, super.name);   //  상위 생성자
}

class Sub2 implements Test {    // 인터페이스

                   // 상위 생성자를 제외한 모든 멤버 재정의
  @override
  int no = 10;
  @override
  String name = 'kim';
  @override
  String hello(String who) {
    return 'aaa';
  }
}

main() {
  Sub2 user = Sub2();
  print('${user.hello('woo')}');
}