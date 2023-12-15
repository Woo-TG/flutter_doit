class SuperClass {
  String name;
  int age;
  SuperClass(this.name, this.age){}  // 생성자
}

class SubClass extends SuperClass {
  // SubClass(): super();   // error 이유--컴파일러가 자동으로 작성하는 생성자..but 상위에는 매개변수 없는 생성자가 없기 때문에 오류 발생함

  // SubClass(String name, int age) : super(name, age) {}  // 가능은 하나 아래쪽 코드가 더 간결함.

  SubClass(super.name, super.age);
}