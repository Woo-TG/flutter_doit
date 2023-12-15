class User {
  late String name;
  late int age;

  // User(String name, int age) {  // 생성자가 호출될 때 받을 데이터
  //   this.name = name;      //  동일한 변수명을 사용
  //   this.age = age;
  // }

// User(this.name, this.age);  // 주로 사용,  멤버변수로 초기화하는 생성자

// User(String arg1, int arg2) : this.name = arg1, this.age = arg2 {}  // 초기화 목록 작성

User(List list) : this.name = list[0], this.age = list[1] {}
}