class MyClass {
  late int data1;   // 멤버 변수
  late int data2;
  MyClass(this.data1, this.data2) {}     // 생성자 정의
  MyClass.first(int arg1): this(arg1, 0);  // 명명된 생성자
  MyClass.second() : this.first(0);
}

main() {     // 객체생성
  MyClass obj1 = MyClass(10, 20);
  MyClass obj2 = MyClass.first(10);
  MyClass obh3 = MyClass.second();
}